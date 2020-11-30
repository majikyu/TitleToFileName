function char_escape($name){
	$name = $name.Replace("\","��")
	$name = $name.Replace("/","�^")
	$name = $name.Replace(":","�F")
	$name = $name.Replace('"','�h')
	$name = $name.Replace("*","��")
	$name = $name.Replace("?","�H")
	$name = $name.Replace("<","��")
	$name = $name.Replace(">","��")
	$name = $name.Replace("|","�b")
	return $name
}

function ttfn(){
	$sh = New-Object -ComObject Shell.Application
	$music = Convert-Path .
	$folder = $sh.Namespace($music) 
	$items = Get-ChildItem -Path ./ -Include *.mp3,*.flac,*.m4a -Name

	foreach($f in $items)
	{
 	   $fi = $folder.ParseName($f)
 	   $title = $folder.GetDetailsOf($fi, 21)
 	   $escapename = char_escape($title)
 	   $ext = (Get-Item $f).Extension
 	   $newname = $escapename + $ext
 	   Rename-Item -Path $f -NewName $newname
	}
	$i = $items.Length
	echo "$i files renamed."
}