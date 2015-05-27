unit uProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, Buttons;

type
  TFProduto = class(TFormPadrao)
    Label1: TLabel;
    DBEidProduto: TDBEdit;
    Label2: TLabel;
    DBEdescricao: TDBEdit;
    Label3: TLabel;
    DBEpreco: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEqtde: TDBEdit;
    Label5: TLabel;
    DBEean: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProduto: TFProduto;

implementation

{$R *.dfm}

procedure TFProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ExportarExcel(DataModule1.mProduto);
end;

procedure TFProduto.btnNovoClick(Sender: TObject);
begin
  DBEidProduto.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFProduto.btnAlterarClick(Sender: TObject);
begin
  DBEidProduto.Color := CorCamposOnlyRead();
  inherited;

end;

procedure TFProduto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DBEidProduto.Color := clWindow;
end;

procedure TFProduto.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DBEidProduto.Color := clWindow;
end;

end.
