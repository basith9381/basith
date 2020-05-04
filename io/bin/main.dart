import 'dart:io';
main(){
  Directory dir = Directory.current;
  print(dir.path);
  var file = File ('new.txt');
  //writefile(file);
  write( file);
  readfile(file);

}
/*
void writefile(File file){

  file.openSync(mode: FileMode.append);
  file.writeAsStringSync('hello word  \r\n hi ');
  print(file.path);


}

 */
void write( File file){
  RandomAccessFile raf = file.openSync(mode: FileMode.append);
  raf.writeStringSync('hello\n');
  raf.close();
}
void readfile (File file)
{
  if (!file.existsSync()) {
    print('not found');
  }
  print(file.readAsStringSync());
  file.deleteSync(recursive: true);
}