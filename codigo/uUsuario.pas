unit uUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  Mask, DBCtrls,
  Buttons;

type
  TFUsuario = class(TFormPadrao)
    Label1: TLabel;
    DBidUsuario: TDBEdit;
    Label2: TLabel;
    DBEnome: TDBEdit;
    Label3: TLabel;
    DBEsenha: TDBEdit;
    Label4: TLabel;
    DBEemail: TDBEdit;
    Label5: TLabel;
    DBEusername: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEidNivel: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEemailExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuario: TFUsuario;

implementation

{$R *.dfm}

procedure TFUsuario.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mUsuario);
end;

procedure TFUsuario.DBEemailExit(Sender: TObject);
begin
  inherited;
  if not isEMail(DBEemail) then
  begin
    ShowMessage('Email Inv�lido');
    DBEemail.SetFocus;
  end;
end;

end.
