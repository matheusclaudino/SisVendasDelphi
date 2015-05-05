unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, ComCtrls, ToolWin, jpeg, Buttons,
  StdCtrls, AppEvnts;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    Panel2: TPanel;
    Image2: TImage;
    Panel3: TPanel;
    imgUsuario: TImage;
    imgCliente: TImage;
    Image1: TImage;
    imgRecalcular: TImage;
    imgProduto: TImage;
    imgPedido: TImage;
    imgContas: TImage;
    imgEntradaEstoque: TImage;
    Image10: TImage;
    imgCidade: TImage;
    AELog: TApplicationEvents;
    mLog: TMemo;
    procedure FormShow(Sender: TObject);
    procedure imgClienteClick(Sender: TObject);
    procedure imgCidadeClick(Sender: TObject);
    procedure imgPedidoClick(Sender: TObject);
    procedure imgProdutoClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure imgEntradaEstoqueClick(Sender: TObject);
    procedure imgContasClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AELogMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure NivelGerente();
    procedure NivelVendedor();
    procedure NivelEstagiario();
    procedure Dinamico(F: TFormClass; F2: TForm);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

Uses  uPadraoModel, UCliente, uCidade, uPedido, uProduto, uUsuario, UEntradaEstoque,
  uConta, uConsultas,
  uConexao;


{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
   mLog.Lines.Add('DATA: ' + FormatDateTime('dd/mm/yyyy',date) + ' ENTROU NO SISTEMA.');

  if(DataModule1.qLoginnivel.AsInteger = 2) then
  begin
    NivelGerente();
  end
  else if(DataModule1.qLoginnivel.AsInteger = 3) then
  begin
    NivelGerente();
    NivelVendedor();
  end
  else if(DataModule1.qLoginnivel.AsInteger = 4) then
  begin
    NivelGerente();
    NivelVendedor();
    NivelEstagiario();
  end;

  {Aplica Tela Cheia ao Form}
  ShowWindow(Handle, SW_MAXIMIZE);
  ShowMessage(DataModule1.qLoginnome.AsString + ' Bem vindo ao Real System!!!');
end;

procedure TForm1.imgClienteClick(Sender: TObject);
begin
  fcliente.show;
end;

procedure TForm1.imgCidadeClick(Sender: TObject);
begin
  FCidade.Show;
end;

procedure TForm1.imgPedidoClick(Sender: TObject);
begin
  FPedido.Show;
end;

procedure TForm1.imgProdutoClick(Sender: TObject);
begin
  FProduto.Show;
end;

procedure TForm1.imgUsuarioClick(Sender: TObject);
begin
  FUsuario.show;
  end;

procedure TForm1.imgEntradaEstoqueClick(Sender: TObject);
begin
  FEntradaEstoque.Show;
end;

procedure TForm1.imgContasClick(Sender: TObject);
begin
  FConta.Show;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  FConsultas.Show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mLog.Lines.Add('HORA: ' + FormatDateTime('hh:mm:ss',now) + ' SAIU DO SISTEMA');
  mLog.Lines.SaveToFile('log\'+FormatDateTime('dd-mm-yyyy',date)+FormatDateTime('-hh.mm.ss.',now)+DataModule1.qLoginusername.AsString+'log.txt');
  Application.Terminate;
end;

procedure TForm1.AELogMessage(var Msg: tagMSG; var Handled: Boolean);
var
  Componente: TWinControl;
begin

  Case Msg.message of
	  WM_LBUTTONUP:
	  begin
	    Componente := FindVCLWindow(Mouse.CursorPos);
          mLog.Lines.Add('HORA: ' + FormatDateTime('hh:mm:ss ',now) +
          DataModule1.qLoginusername.AsString + ' Interagiu com o ' + Componente.Name);
		    //Showmessage('Classe: ' + Componente.ClassName + ' - Nome: ' + Componente.Name  );
	  end;
  end;//fim case
end;

procedure TForm1.NivelGerente();
begin
  imgUsuario.Visible := False;
end;

procedure TForm1.NivelVendedor();
begin
  imgEntradaEstoque.Visible:= False;
  imgRecalcular.Visible := False;
end;

procedure TForm1.NivelEstagiario();
begin
  imgCliente.Visible := False;
  imgCidade.Visible := False;
end;

procedure TForm1.Dinamico(F: TFormClass; F2: TForm);
begin
  Application.CreateForm(F,F2);
  try
    F2.ShowModal;
  finally
    F2.Free;
  end;
end;


end.
