unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids, jamaah, kegiatan, mubaligh;

type
  TForm4 = class(TForm)
    s: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses uModul;

procedure TForm4.Button1Click(Sender: TObject);
begin
 Form5.Show;
 Form4.hide;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form6.Show;
Form4.Hide;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
form7.show;
form4.hide;
end;

end.
