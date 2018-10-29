



(*--------------------------------------------------------------------------*)
(* Structure: UniClasses                                                    *)
(*                                                                          *)
(* Notes:                                                                   *)
(*   read CharClasses in order to understand how CharClasses are handled.   *)
(*                                                                          *)
(* Depends on:                                                              *)
(*   UniChar                                                                *)
(*   CharClasses                                                            *)
(*                                                                          *)
(* Exceptions raised by functions in this structure:                        *)
(*   decValue      : none                                                   *)
(*   hexValue      : none                                                   *)
(*   isAsciiLetter : none                                                   *)
(*   isEnc         : none                                                   *)
(*   isEncS        : none                                                   *)
(*   isName        : none                                                   *)
(*   isNms         : none                                                   *)
(*   isPubid       : none                                                   *)
(*   isS           : none                                                   *)
(*   isXml         : none                                                   *)
(*   isUnicode     : none                                                   *)
(*   isVers        : none                                                   *)
(*--------------------------------------------------------------------------*)
signature UniClasses =
   sig
      val isName    : UniChar.Char -> bool
      val isNms     : UniChar.Char -> bool
      val isPubid   : UniChar.Char -> bool
      val isS       : UniChar.Char -> bool
      val isEnc     : UniChar.Char -> bool
      val isEncS    : UniChar.Char -> bool
      val isVers    : UniChar.Char -> bool
      val isDec     : UniChar.Char -> bool
      val isHex     : UniChar.Char -> bool
      val isXml     : UniChar.Char -> bool 
      val isUnicode : UniChar.Char -> bool 

      val decValue  : UniChar.Char -> UniChar.Char option
      val hexValue  : UniChar.Char -> UniChar.Char option

      val isAsciiLetter : UniChar.Char -> bool
   end

structure UniClasses : UniClasses =
   struct
      open UniChar CharClasses UniRanges

      (*--------------------------------------------------------------------*)
      (* initialize the character classes.                                  *)
      (*--------------------------------------------------------------------*)
      local 
	 val nmsTemp = initialize(0wx0000,0wx3FFF)
	 val restNms = addCharRange(nmsTemp,0wx0000,0wx3FFF,nmsRange)
	 val _ = if restNms=[(0wxAC00,0wxD7A3),(0wx4E00,0wx9FA5)] then () 
		 else print ("Warning: extra characters after computing nms char class.\n")

	 val nameTemp = initialize(0wx0000,0wxFFFF)
	 val restName = addCharRange(nameTemp,0wx0000,0wx3FFF,nameRange)
	 val _ = if restName=[(0wxAC00,0wxD7A3),(0wx4E00,0wx9FA5)] then () 
		 else print ("Warning: extra characters after computing name char class.\n")

	 val pubTemp = initialize(0wx0000,0wx007F)
	 val restPubid = addCharRange(pubTemp,0wx0000,0wx007F,pubidRange)
	 val _ = if restPubid=nil then () 
		 else print ("Warning: extra characters after computing pubid char class.\n")

	 val encTemp = initialize(0wx0000,0wx007F)
	 val restEnc = addCharRange(encTemp,0wx0000,0wx007F,encRange)
	 val _ = if restEnc=nil then () 
		 else print ("Warning: extra characters after computing enc char class.\n")
      in
	 val nmsClass = finalize nmsTemp
	 val nameClass = finalize nameTemp
	 val pubClass = finalize pubTemp
	 val encClass = finalize encTemp
      end
      
      (*--------------------------------------------------------------------*)
      (* is a character a name start char?                                  *)
      (*--------------------------------------------------------------------*)
      fun isNms c = if c<0wx4000 then inCharClass(c,nmsClass) 
		    else 
		       c>=0wx4E00 andalso c<=0wx9FA5 orelse
		       c>=0wxAC00 andalso c<=0wxD7A3

      (*--------------------------------------------------------------------*)
      (* is a character a name char?                                        *)
      (*--------------------------------------------------------------------*)
      fun isName c = if c<0wx4000 then inCharClass(c,nameClass)
		     else 
			c>=0wx4E00 andalso c<=0wx9FA5 orelse
			c>=0wxAC00 andalso c<=0wxD7A3

      (*--------------------------------------------------------------------*)
      (* is a character a pubid char?                                       *)
      (*--------------------------------------------------------------------*)
      fun isPubid c = c<0wx80 andalso inCharClass(c,pubClass)

      (*--------------------------------------------------------------------*)
      (* is a character valid in an encoding name, at its start, or in a    *)
      (* version number?                                                    *)
      (*--------------------------------------------------------------------*)
      fun isEnc c = 
	 c<0wx80 andalso inCharClass(c,encClass)
      fun isEncS (c:UniChar.Char) = 
	 c>=0wx41 andalso c<=0wx5A orelse
	 c>=0wx61 andalso c<=0wx7A
      fun isVers c = 
	 isEnc c orelse c=0wx3A (* #":" *)

      (*--------------------------------------------------------------------*)
      (* these are the valid Unicode characters (including surrogates).     *)
      (*--------------------------------------------------------------------*)
      fun isUnicode (c:UniChar.Char) = c<=0wx10FFFF

      (*--------------------------------------------------------------------*)
      (* XML characters if not checked for Unicode char in advance.         *)
      (*--------------------------------------------------------------------*)
      fun isXml (c:UniChar.Char) = 
	 c>=0wx0020 andalso c<=0wxD7FF orelse
	 c>=0wxE000 andalso c<=0wxFFFD orelse
	 c>=0wx10000 andalso c<=0wx10FFFF orelse
	 c=0wx9 orelse c=0wxA orelse c=0wxD

      (*--------------------------------------------------------------------*)
      (* the frontend supresses 0wxD (carriage return), but its is still    *)
      (* present when encoding is recognized.                               *)
      (*--------------------------------------------------------------------*)
      fun isS (c:UniChar.Char) = 
	 case c
	   of 0wx09 => true 
	    | 0wx0A => true 
	    | 0wx0D => true
	    | 0wx20 => true
	    | _ => false

      (*--------------------------------------------------------------------*)
      (* is this character an ascii decimal/hexadecimal digit?              *)
      (*--------------------------------------------------------------------*)
      fun isDec (c:UniChar.Char) = 
	 c>=0wx30 andalso c<=0wx39
      fun isHex (c:UniChar.Char) = 
	 c>=0wx30 andalso c<=0wx39 orelse     
	 c>=0wx41 andalso c<=0wx46 orelse
	 c>=0wx61 andalso c<=0wx66

      (*--------------------------------------------------------------------*)
      (* calculate the decimal/hexadecimal value of an ascii (hex-)digit.   *)
      (*--------------------------------------------------------------------*)
      fun decValue (c:UniChar.Char) = 
	 let val v = c-0wx30
	 in if v<=0wx9 then SOME v else NONE
	 end
      fun hexValue (c:UniChar.Char) = 
	 let val v = c-0wx30
	 in if v<=0wx9 then SOME v
	    else (if c>=0wx41 andalso c<=0wx46 then SOME(c-0wx37)
	    else if c>=0wx61 andalso c<=0wx66 then SOME(c-0wx57)
		 else NONE)
	 end
		    
      (*--------------------------------------------------------------------*)
      (* is c in [a-z]+[A-Z]?                                               *)
      (*--------------------------------------------------------------------*)
      fun isAsciiLetter (c:UniChar.Char) = 
	 c>=0wx41 andalso c<=0wx5A orelse 
	 c>=0wx61 andalso c<=0wx7A 
   end
