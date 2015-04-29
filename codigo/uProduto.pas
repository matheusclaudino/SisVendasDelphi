unit uProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoModel, DB, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, uConexao,
  DBCtrls, Mask, ComObj;

type
  TFProduto = class(TFormPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProduto: TFProduto;

implementation

{$R *.dfm}

procedure TFProduto.Button1Click(Sender: TObject);
var
	 	linha, coluna: integer;
	 	planilha: variant;
	 	valorCampo: string;

	begin
  inherited;
		planilha := CreateOleObject ('Excel.Application');
		planilha.Workbooks.add(1);
		planilha.Cells.Select;
		planilha.Selection.NumberFormat := '@';
		planilha.Caption := 'Exportação de dados para o excel';
		planilha.Visible := True;
		DataModule1.mProduto.First;

		for linha := 0 to DataModule1.mProduto.RecordCount -1 do
		begin
			for coluna := 1 to DataModule1.mProduto.FieldCount do
			begin
				valorCampo := DataModule1.mProduto.Fields[coluna-1].AsString;
				planilha.Cells[linha+2, coluna] := valorCampo;
			end;
			DataModule1.mProduto.Next;
		end;

		for coluna := 1 to DataModule1.mProduto.FieldCount do
		begin
			valorCampo := DataModule1.mProduto.Fields[coluna-1].DisplayLabel;
			planilha.Cells[1, coluna] := valorCampo;
		end;
		planilha.Columns.AutoFit;
end;

end.
