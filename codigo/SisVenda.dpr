program SisVenda;

uses
  Forms,
  uPrincipal in 'UPrincipal.pas' {Form1},
  uConexao in 'uConexao.pas' {DataModule1: TDataModule},
  uPadraoModel in 'uPadraoModel.pas' {FormPadrao},
  UCliente in 'UCliente.pas' {FCliente},
  uCidade in 'uCidade.pas' {FCidade},
  uPedido in 'uPedido.pas' {FPedido},
  uProduto in 'uProduto.pas' {FProduto},
  uUsuario in 'uUsuario.pas' {FUsuario},
  UEntradaEstoque in 'UEntradaEstoque.pas' {FEntradaEstoque},
  uConta in 'uConta.pas' {FConta},
  uConsultas in 'uConsultas.pas' {FConsultas},
  uConsultaContas in 'uConsultaContas.pas' {FConsultaContas},
  uConsultaClientes in 'uConsultaClientes.pas' {FConsultaClientes},
  uConsultasProdutos in 'uConsultasProdutos.pas' {FConsultaProdutos},
  uConsultaEstoque in 'uConsultaEstoque.pas' {FConsultaEstoque},
  uLogin in 'uLogin.pas' {FLogin},
  uMailSMTP in 'uMailSMTP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
