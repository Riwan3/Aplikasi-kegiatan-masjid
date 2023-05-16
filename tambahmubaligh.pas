unit tambahmubaligh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    ednama: TEdit;
    edtmt: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBImage1: TDBImage;
    Label2: TLabel;
    Label3: TLabel;
    edjk: TEdit;
    edtgl: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses uModul, mubaligh;

procedure TForm9.Button1Click(Sender: TObject);
begin
try
    with DataModule1.Qmubaligh do
    begin
     Append;
     FieldByName('nama_mubaligh').AsString:=ednama.Text;
     FieldByName('tmp_lahir').AsString:=edtmt.Text;
     FieldByName('tgl_lahir').AsDateTime:=edtgl.Date;
     FieldByName('jk').AsString:=edjk.Text;

     post;
    end;
except
  on Salah:Exception do
  ShowMessage(Salah.Message);
   end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
form7.show;
form9.hide;
end;

end.
