



structure UniRanges = 
   struct
      val digitRange = [(0wx0030,0wx0039),
			(0wx0660,0wx0669),
			(0wx06F0,0wx06F9),
			(0wx0966,0wx096F),
			(0wx09E6,0wx09EF),
			(0wx0A66,0wx0A6F),
			(0wx0AE6,0wx0AEF),
			(0wx0B66,0wx0B6F),
			(0wx0BE7,0wx0BEF),
			(0wx0C66,0wx0C6F),
			(0wx0CE6,0wx0CEF),
			(0wx0D66,0wx0D6F),
			(0wx0E50,0wx0E59),
			(0wx0ED0,0wx0ED9),
			(0wx0F20,0wx0F29)
			] : CharClasses.CharRange

      val digitRange09 = [(0wx0030,0wx0039),
			  (0wx0660,0wx0669),
			  (0wx06F0,0wx06F9),
			  (0wx0E50,0wx0E59),
			  (0wx0ED0,0wx0ED9),
			  (0wx0F20,0wx0F29)
			  ] : CharClasses.CharRange

      val digitRange6F = [(0wx0966,0wx096F),
			  (0wx09E6,0wx09EF),
			  (0wx0A66,0wx0A6F),
			  (0wx0AE6,0wx0AEF),
			  (0wx0B66,0wx0B6F),
			  (0wx0BE7,0wx0BEF),
			  (0wx0C66,0wx0C6F),
			  (0wx0CE6,0wx0CEF),
			  (0wx0D66,0wx0D6F)
			  ] : CharClasses.CharRange

      val baseRange = [(0wx0041,0wx005A),
		       (0wx0061,0wx007A),
		       (0wx00C0,0wx00D6),
		       (0wx00D8,0wx00F6),
		       (0wx00F8,0wx00FF),
		       (0wx0100,0wx0131),
		       (0wx0134,0wx013E),
		       (0wx0141,0wx0148),
		       (0wx014A,0wx017E),
		       (0wx0180,0wx01C3),
		       (0wx01CD,0wx01F0),
		       (0wx01F4,0wx01F5),
		       (0wx01FA,0wx0217),
		       (0wx0250,0wx02A8),
		       (0wx02BB,0wx02C1),
		       (0wx0386,0wx0386),
		       (0wx0388,0wx038A),
		       (0wx038C,0wx038C),
		       (0wx038E,0wx03A1),
		       (0wx03A3,0wx03CE),
		       (0wx03D0,0wx03D6),
		       (0wx03DA,0wx03DA),
		       (0wx03DC,0wx03DC),
		       (0wx03DE,0wx03DE),
		       (0wx03E0,0wx03E0),
		       (0wx03E2,0wx03F3),
		       (0wx0401,0wx040C),
		       (0wx040E,0wx044F),
		       (0wx0451,0wx045C),
		       (0wx045E,0wx0481),
		       (0wx0490,0wx04C4),
		       (0wx04C7,0wx04C8),
		       (0wx04CB,0wx04CC),
		       (0wx04D0,0wx04EB),
		       (0wx04EE,0wx04F5),
		       (0wx04F8,0wx04F9),
		       (0wx0531,0wx0556),
		       (0wx0559,0wx0559),
		       (0wx0561,0wx0586),
		       (0wx05D0,0wx05EA),
		       (0wx05F0,0wx05F2),
		       (0wx0621,0wx063A),
		       (0wx0641,0wx064A),
		       (0wx0671,0wx06B7),
		       (0wx06BA,0wx06BE),
		       (0wx06C0,0wx06CE),
		       (0wx06D0,0wx06D3),
		       (0wx06D5,0wx06D5),
		       (0wx06E5,0wx06E6),
		       (0wx0905,0wx0939),
		       (0wx093D,0wx093D),
		       (0wx0958,0wx0961),
		       (0wx0985,0wx098C),
		       (0wx098F,0wx0990),
		       (0wx0993,0wx09A8),
		       (0wx09AA,0wx09B0),
		       (0wx09B2,0wx09B2),
		       (0wx09B6,0wx09B9),
		       (0wx09DC,0wx09DD),
		       (0wx09DF,0wx09E1),
		       (0wx09F0,0wx09F1),
		       (0wx0A05,0wx0A0A),
		       (0wx0A0F,0wx0A10),
		       (0wx0A13,0wx0A28),
		       (0wx0A2A,0wx0A30),
		       (0wx0A32,0wx0A33),
		       (0wx0A35,0wx0A36),
		       (0wx0A38,0wx0A39),
		       (0wx0A59,0wx0A5C),
		       (0wx0A5E,0wx0A5E),
		       (0wx0A72,0wx0A74),
		       (0wx0A85,0wx0A8B),
		       (0wx0A8D,0wx0A8D),
		       (0wx0A8F,0wx0A91),
		       (0wx0A93,0wx0AA8),
		       (0wx0AAA,0wx0AB0),
		       (0wx0AB2,0wx0AB3),
		       (0wx0AB5,0wx0AB9),
		       (0wx0ABD,0wx0ABD),
		       (0wx0AE0,0wx0AE0),
		       (0wx0B05,0wx0B0C),
		       (0wx0B0F,0wx0B10),
		       (0wx0B13,0wx0B28),
		       (0wx0B2A,0wx0B30),
		       (0wx0B32,0wx0B33),
		       (0wx0B36,0wx0B39),
		       (0wx0B3D,0wx0B3D),
		       (0wx0B5C,0wx0B5D),
		       (0wx0B5F,0wx0B61),
		       (0wx0B85,0wx0B8A),
		       (0wx0B8E,0wx0B90),
		       (0wx0B92,0wx0B95),
		       (0wx0B99,0wx0B9A),
		       (0wx0B9C,0wx0B9C),
		       (0wx0B9E,0wx0B9F),
		       (0wx0BA3,0wx0BA4),
		       (0wx0BA8,0wx0BAA),
		       (0wx0BAE,0wx0BB5),
		       (0wx0BB7,0wx0BB9),
		       (0wx0C05,0wx0C0C),
		       (0wx0C0E,0wx0C10),
		       (0wx0C12,0wx0C28),
		       (0wx0C2A,0wx0C33),
		       (0wx0C35,0wx0C39),
		       (0wx0C60,0wx0C61),
		       (0wx0C85,0wx0C8C),
		       (0wx0C8E,0wx0C90),
		       (0wx0C92,0wx0CA8),
		       (0wx0CAA,0wx0CB3),
		       (0wx0CB5,0wx0CB9),
		       (0wx0CDE,0wx0CDE),
		       (0wx0CE0,0wx0CE1),
		       (0wx0D05,0wx0D0C),
		       (0wx0D0E,0wx0D10),
		       (0wx0D12,0wx0D28),
		       (0wx0D2A,0wx0D39),
		       (0wx0D60,0wx0D61),
		       (0wx0E01,0wx0E2E),
		       (0wx0E30,0wx0E30),
		       (0wx0E32,0wx0E33),
		       (0wx0E40,0wx0E45),
		       (0wx0E81,0wx0E82),
		       (0wx0E84,0wx0E84),
		       (0wx0E87,0wx0E88),
		       (0wx0E8A,0wx0E8A),
		       (0wx0E8D,0wx0E8D),
		       (0wx0E94,0wx0E97),
		       (0wx0E99,0wx0E9F),
		       (0wx0EA1,0wx0EA3),
		       (0wx0EA5,0wx0EA5),
		       (0wx0EA7,0wx0EA7),
		       (0wx0EAA,0wx0EAB),
		       (0wx0EAD,0wx0EAE),
		       (0wx0EB0,0wx0EB0),
		       (0wx0EB2,0wx0EB3),
		       (0wx0EBD,0wx0EBD),
		       (0wx0EC0,0wx0EC4),
		       (0wx0F40,0wx0F47),
		       (0wx0F49,0wx0F69),
		       (0wx10A0,0wx10C5),
		       (0wx10D0,0wx10F6),
		       (0wx1100,0wx1100),
		       (0wx1102,0wx1103),
		       (0wx1105,0wx1107),
		       (0wx1109,0wx1109),
		       (0wx110B,0wx110C),
		       (0wx110E,0wx1112),
		       (0wx113C,0wx113C),
		       (0wx113E,0wx113E),
		       (0wx1140,0wx1140),
		       (0wx114C,0wx114C),
		       (0wx114E,0wx114E),
		       (0wx1150,0wx1150),
		       (0wx1154,0wx1155),
		       (0wx1159,0wx1159),
		       (0wx115F,0wx1161),
		       (0wx1163,0wx1163),
		       (0wx1165,0wx1165),
		       (0wx1167,0wx1167),
		       (0wx1169,0wx1169),
		       (0wx116D,0wx116E),
		       (0wx1172,0wx1173),
		       (0wx1175,0wx1175),
		       (0wx119E,0wx119E),
		       (0wx11A8,0wx11A8),
		       (0wx11AB,0wx11AB),
		       (0wx11AE,0wx11AF),
		       (0wx11B7,0wx11B8),
		       (0wx11BA,0wx11BA),
		       (0wx11BC,0wx11C2),
		       (0wx11EB,0wx11EB),
		       (0wx11F0,0wx11F0),
		       (0wx11F9,0wx11F9),
		       (0wx1E00,0wx1E9B),
		       (0wx1EA0,0wx1EF9),
		       (0wx1F00,0wx1F15),
		       (0wx1F18,0wx1F1D),
		       (0wx1F20,0wx1F45),
		       (0wx1F48,0wx1F4D),
		       (0wx1F50,0wx1F57),
		       (0wx1F59,0wx1F59),
		       (0wx1F5B,0wx1F5B),
		       (0wx1F5D,0wx1F5D),
		       (0wx1F5F,0wx1F7D),
		       (0wx1F80,0wx1FB4),
		       (0wx1FB6,0wx1FBC),
		       (0wx1FBE,0wx1FBE),
		       (0wx1FC2,0wx1FC4),
		       (0wx1FC6,0wx1FCC),
		       (0wx1FD0,0wx1FD3),
		       (0wx1FD6,0wx1FDB),
		       (0wx1FE0,0wx1FEC),
		       (0wx1FF2,0wx1FF4),
		       (0wx1FF6,0wx1FFC),
		       (0wx2126,0wx2126),
		       (0wx212A,0wx212B),
		       (0wx212E,0wx212E),
		       (0wx2180,0wx2182),
		       (0wx3041,0wx3094),
		       (0wx30A1,0wx30FA),
		       (0wx3105,0wx312C),
                       (0wxAC00,0wxD7A3) 
		       ] : CharClasses.CharRange

      val ideoRange = [(0wx3007,0wx3007),
		       (0wx3021,0wx3029),
                       (0wx4E00,0wx9FA5)
		       ] : CharClasses.CharRange

      val combRange = [(0wx0300,0wx0345),
		       (0wx0360,0wx0361),
		       (0wx0483,0wx0486),
		       (0wx0591,0wx05A1),
		       (0wx05A3,0wx05B9),
		       (0wx05BB,0wx05BD),
		       (0wx05BF,0wx05BF),
		       (0wx05C1,0wx05C2),
		       (0wx05C4,0wx05C4),
		       (0wx064B,0wx0652),
		       (0wx0670,0wx0670),
		       (0wx06D6,0wx06DC),
		       (0wx06DD,0wx06DF),
		       (0wx06E0,0wx06E4),
		       (0wx06E7,0wx06E8),
		       (0wx06EA,0wx06ED),
		       (0wx0901,0wx0903),
		       (0wx093C,0wx093C),
		       (0wx093E,0wx094C),
		       (0wx094D,0wx094D),
		       (0wx0951,0wx0954),
		       (0wx0962,0wx0963),
		       (0wx0981,0wx0983),
		       (0wx09BC,0wx09BC),
		       (0wx09BE,0wx09BE),
		       (0wx09BF,0wx09BF),
		       (0wx09C0,0wx09C4),
		       (0wx09C7,0wx09C8),
		       (0wx09CB,0wx09CD),
		       (0wx09D7,0wx09D7),
		       (0wx09E2,0wx09E3),
		       (0wx0A02,0wx0A02),
		       (0wx0A3C,0wx0A3C),
		       (0wx0A3E,0wx0A3E),
		       (0wx0A3F,0wx0A3F),
		       (0wx0A40,0wx0A42),
		       (0wx0A47,0wx0A48),
		       (0wx0A4B,0wx0A4D),
		       (0wx0A70,0wx0A71),
		       (0wx0A81,0wx0A83),
		       (0wx0ABC,0wx0ABC),
		       (0wx0ABE,0wx0AC5),
		       (0wx0AC7,0wx0AC9),
		       (0wx0ACB,0wx0ACD),
		       (0wx0B01,0wx0B03),
		       (0wx0B3C,0wx0B3C),
		       (0wx0B3E,0wx0B43),
		       (0wx0B47,0wx0B48),
		       (0wx0B4B,0wx0B4D),
		       (0wx0B56,0wx0B57),
		       (0wx0B82,0wx0B83),
		       (0wx0BBE,0wx0BC2),
		       (0wx0BC6,0wx0BC8),
		       (0wx0BCA,0wx0BCD),
		       (0wx0BD7,0wx0BD7),
		       (0wx0C01,0wx0C03),
		       (0wx0C3E,0wx0C44),
		       (0wx0C46,0wx0C48),
		       (0wx0C4A,0wx0C4D),
		       (0wx0C55,0wx0C56),
		       (0wx0C82,0wx0C83),
		       (0wx0CBE,0wx0CC4),
		       (0wx0CC6,0wx0CC8),
		       (0wx0CCA,0wx0CCD),
		       (0wx0CD5,0wx0CD6),
		       (0wx0D02,0wx0D03),
		       (0wx0D3E,0wx0D43),
		       (0wx0D46,0wx0D48),
		       (0wx0D4A,0wx0D4D),
		       (0wx0D57,0wx0D57),
		       (0wx0E31,0wx0E31),
		       (0wx0E34,0wx0E3A),
		       (0wx0E47,0wx0E4E),
		       (0wx0EB1,0wx0EB1),
		       (0wx0EB4,0wx0EB9),
		       (0wx0EBB,0wx0EBC),
		       (0wx0EC8,0wx0ECD),
		       (0wx0F18,0wx0F19),
		       (0wx0F35,0wx0F35),
		       (0wx0F37,0wx0F37),
		       (0wx0F39,0wx0F39),
		       (0wx0F3E,0wx0F3E),
		       (0wx0F3F,0wx0F3F),
		       (0wx0F71,0wx0F84),
		       (0wx0F86,0wx0F8B),
		       (0wx0F90,0wx0F95),
		       (0wx0F97,0wx0F97),
		       (0wx0F99,0wx0FAD),
		       (0wx0FB1,0wx0FB7),
		       (0wx0FB9,0wx0FB9),
		       (0wx20D0,0wx20DC),
		       (0wx20E1,0wx20E1),
		       (0wx302A,0wx302F),
		       (0wx3099,0wx3099),
		       (0wx309A,0wx309A)
		       ] : CharClasses.CharRange

      val extRange = [(0wx00B7,0wx00B7),
		      (0wx02D0,0wx02D0),
		      (0wx02D1,0wx02D1),
		      (0wx0387,0wx0387),
		      (0wx0640,0wx0640),
		      (0wx0E46,0wx0E46),
		      (0wx0EC6,0wx0EC6),
		      (0wx3005,0wx3005),
		      (0wx3031,0wx3035),
		      (0wx309D,0wx309E),
		      (0wx30FC,0wx30FE)
		      ] : CharClasses.CharRange

      val nmsRange = List.concat 
	 [[(0wx3A,0wx3A),(0wx5F,0wx5F)](* :_ *),
	  baseRange,
	  ideoRange]

      val nameRange = List.concat 
	 [[(0wx2D,0wx2D),(0wx2E,0wx2E)](* -. *),
	  digitRange,
	  combRange,
	  extRange,
	  nmsRange]

      val pubidRange = List.concat
	 [map (fn c => (c,c)) [0wx0A,0wx0D,0wx20], (* space,cr,lf *)
	  map (fn c => (c,c)) (UniChar.String2Data "-'()+,./:=?;!*#@$_%"),
	  [(0wx0030,0wx0039),(0wx0041,0wx005A),(0wx0061,0wx007A)] (* [0-9A-Za-z] *)
	  ] : CharClasses.CharRange 

      val encRange =       
      	 [(0wx002D,0wx002E), (* -.  *)
	  (0wx0030,0wx0039), (* 0-9 *)
	  (0wx0041,0wx005A), (* A-Z *)
	  (0wx005F,0wx005F), (* _   *)
	  (0wx0061,0wx007A)  (* a-z *)
	  ] : CharClasses.CharRange
   end
