unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, daftarjamaah, home;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    ednama: TEdit;
    edid: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uModul;

procedure TForm2.Button1Click(Sender: TObject);

begin
     if trim (ednama.Text)='' then
    begin
      ShowMessage('Anda belum mengisi nama');
      ednama.SetFocus;
    end;
    if True
    then
    begin
      with DataModule1.Qjamaah do
      begin
        SQL.Clear;
        SQL.Add('Select*from jamaah');
        Open;
        SQL.Clear;
        SQL.Add('select * from jamaah where nama_jamaah='+QuotedStr(ednama.Text));
        Open;
      end;
         if DataModule1.Qjamaah.FieldByName('id_jamaah').AsString<>edid.Text then
        begin

        end else if DataModule1.Qjamaah.FieldByName('nama_jamaah').AsString<>ednama.Text then

        begin
          Form4.Show;
          Form2.hide;
        end;
        end;
        if DataModule1.Qjamaah.RecordCount=0 then
    begin
      with DataModule1.Qpengurus do
      begin
        SQL.Clear;
        SQL.Add('Select*from pengurus');
        Open;
        SQL.Clear;
        SQL.Add('select * from pengurus where nama_pengurus='+QuotedStr(ednama.Text));
        Open;
      end;
         if DataModule1.Qpengurus.RecordCount=0 then
         begin
           ShowMessage('Data tidak ditemukan');
         end else
        if DataModule1.Qpengurus.FieldByName('kd_pengurus').AsString<>edid.Text then
        begin
          ShowMessage('Kode / id yang di masukkan salah');
        end else
        begin
          ShowMessage('Berhasil masuk');
          Form4.Show;
          Form2.hide;
        end;


    end;










end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form3.Show;
form2.hide;
end;

end.
