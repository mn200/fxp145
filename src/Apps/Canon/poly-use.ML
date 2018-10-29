val _ = PolyML.print_depth ~1;

fun die s = (print (s ^ "\n"); OS.Process.exit OS.Process.failure)
fun mkd d =
    if OS.Path.isRelative d then
      OS.Path.mkAbsolute {path = d, relativeTo = OS.FileSys.getDir()}
    else d
fun doDir d =
    let
      val old = OS.FileSys.getDir ()
    in
      OS.FileSys.chDir d
           handle SysErr => die ("Couldn't find directory "^mkd d);
      print ("Compiling in "^mkd d^"\n");
      use "poly-use.ML";
      OS.FileSys.chDir old
    end;

doDir "../../Parser";
doDir "../../Catalog";
doDir "../../Unicode/Encode";

use "canonOptions.sml";
use "canonEncode.sml";
use "canonOutput.sml";
use "canonHooks.sml";
use "canon.sml";

fun main() =
    Canon.canon(CommandLine.name(), CommandLine.arguments());
