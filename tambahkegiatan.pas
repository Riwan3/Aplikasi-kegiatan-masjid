unit tambahkegiatan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    ednama: TEdit;
    edtmt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBImage1: TDBImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses kegiatan, uModul;

procedure TForm8.Button1Click(Sender: TObject);
begin
try
     with DataModule1 do
     begin
          if Trim(ednama.Text)='' then
          begin
            beep;
            ShowMessage('Nama kegiatan belum diisi');
            ednama.SetFocus;
          end else
          if Trim(edtmt.Text)='' then
          begin
            beep;
            ShowMessage('Tempat Kegiatan belum diisi');
            edtmt.SetFocus;
          end else
          if Qkegiatan.Locate('nama_kegiatan',ednama.Text, []) then
          begin
            beep;
            ShowMessage('Nama sudah terdaftar');
          end else
          with DataModule1.Qkegiatan do
             begin
             Append;
             FieldByName('tmp_kegiatan').AsString:=edtmt.Text;
             FieldByName('nama_kegiatan').AsString:=ednama.Text;
             post;
             ShowMessage('Data Telah Ditambahkan');
             form6.show;
             form8.hide;
            end;

     end;
  except
     on Salah:Exception do
     ShowMessage(Salah.Message);
  end;

end;
procedure TForm8.Button2Click(Sender: TObject);
begin
   form6.show;
   form8.hide;
end;

end.
