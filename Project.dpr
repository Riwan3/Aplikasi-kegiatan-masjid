program Project;

uses
  Vcl.Forms,
  splash in 'splash.pas' {Form1},
  login in 'login.pas' {Form2},
  daftarjamaah in 'daftarjamaah.pas' {Form3},
  home in 'home.pas' {Form4},
  jamaah in 'jamaah.pas' {Form5},
  kegiatan in 'kegiatan.pas' {Form6},
  mubaligh in 'mubaligh.pas' {Form7},
  tambahkegiatan in 'tambahkegiatan.pas' {Form8},
  tambahmubaligh in 'tambahmubaligh.pas' {Form9},
  keuangan in 'keuangan.pas' {Form10},
  uModul in 'uModul.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
