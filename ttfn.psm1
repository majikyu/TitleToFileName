function char_escape($name){
	$name = $name.Replace("\","Åè")
	$name = $name.Replace("/","Å^")
	$name = $name.Replace(":","ÅF")
	$name = $name.Replace('"','Åh')
	$name = $name.Replace("*","Åñ")
	$name = $name.Replace("?","ÅH")
	$name = $name.Replace("<","ÅÉ")
	$name = $name.Replace(">","ÅÑ")
	$name = $name.Replace("|","Åb")
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