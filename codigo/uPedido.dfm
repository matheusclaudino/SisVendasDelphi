inherited FPedido: TFPedido
  Left = 237
  Top = 114
  Width = 755
  Height = 635
  Caption = 'FPedido'
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 585
    Width = 747
  end
  inherited ToolBar1: TToolBar
    Width = 747
  end
  inherited PageControl1: TPageControl
    Width = 747
    Height = 554
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        Width = 739
        Height = 526
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 55
          Height = 13
          Caption = 'Cod Pedido'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 593
          Top = 106
          Width = 99
          Height = 13
          Caption = 'Prazo de Pagamento'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 65
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 593
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit6
        end
        object Label2: TLabel
          Left = 16
          Top = 106
          Width = 48
          Height = 13
          Caption = 'Descricao'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 42
          Width = 65
          Height = 21
          DataField = 'idPedido'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 594
          Top = 123
          Width = 128
          Height = 21
          DataField = 'prazoPagamento'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 82
          Width = 65
          Height = 21
          DataField = 'idCliente'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 593
          Top = 82
          Width = 128
          Height = 21
          DataField = 'data'
          DataSource = DS
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 82
          Width = 505
          Height = 21
          DataField = 'NomeCliente'
          DataSource = DS
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 122
          Width = 569
          Height = 21
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 16
          Top = 152
          Width = 705
          Height = 361
          Caption = 'ITENS'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
          object Label3: TLabel
            Left = 21
            Top = 64
            Width = 51
            Height = 13
            Caption = 'Valor Total'
          end
          object Label7: TLabel
            Left = 21
            Top = 101
            Width = 41
            Height = 13
            Caption = 'idPedido'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 21
            Top = 141
            Width = 45
            Height = 13
            Caption = 'idProduto'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 21
            Top = 181
            Width = 53
            Height = 13
            Caption = 'quantidade'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 21
            Top = 221
            Width = 59
            Height = 13
            Caption = 'precoParcial'
            FocusControl = DBEdit10
          end
          object Label11: TLabel
            Left = 21
            Top = 261
            Width = 63
            Height = 13
            Caption = 'precoUnitario'
            FocusControl = DBEdit11
          end
          object SpeedButton1: TSpeedButton
            Left = 144
            Top = 312
            Width = 23
            Height = 22
            OnClick = SpeedButton1Click
          end
          object GroupBox2: TGroupBox
            Left = 176
            Top = 16
            Width = 513
            Height = 329
            Caption = 'PRODUTO'
            TabOrder = 0
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 509
              Height = 312
              Align = alClient
              DataSource = DataModule1.DsPedidoItem
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'idPedido'
                  Title.Caption = 'Ped'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'idProduto'
                  Title.Caption = 'Cod Prod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'descricao'
                  Title.Caption = 'Descricao'
                  Width = 183
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'quantidade'
                  Title.Caption = 'QTD'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'precoUnitario'
                  Title.Caption = 'Preco Unit'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'precoParcial'
                  Title.Caption = 'Preco Parcial'
                  Visible = True
                end>
            end
          end
          object GroupBox3: TGroupBox
            Left = 16
            Top = 16
            Width = 145
            Height = 41
            Caption = 'F5 - Cod Produto '
            TabOrder = 1
            object ed_barra: TEdit
              Left = 8
              Top = 16
              Width = 129
              Height = 21
              TabOrder = 0
              OnKeyDown = ed_barraKeyDown
            end
          end
          object DBEdit7: TDBEdit
            Left = 21
            Top = 117
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idPedido'
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 21
            Top = 157
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'idProduto'
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit9: TDBEdit
            Left = 21
            Top = 197
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'quantidade'
            TabOrder = 4
          end
          object DBEdit10: TDBEdit
            Left = 21
            Top = 237
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoParcial'
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit11: TDBEdit
            Left = 21
            Top = 277
            Width = 134
            Height = 21
            TabStop = False
            DataField = 'precoUnitario'
            ReadOnly = True
            TabOrder = 6
          end
          object ed_vlTotal: TDBEdit
            Left = 21
            Top = 80
            Width = 134
            Height = 21
            DataField = 'valorTotal'
            DataSource = DS
            TabOrder = 7
            OnEnter = ed_vlTotalEnter
          end
        end
        object ed_tecla: TEdit
          Left = 280
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 7
          OnKeyDown = ed_teclaKeyDown
        end
      end
    end
    inherited tbFiltros: TTabSheet
      inherited gbFiltros: TGroupBox
        Width = 739
      end
      inherited DBGrid1: TDBGrid
        Width = 739
        Height = 464
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mPedido
    Left = 672
    Top = 8
  end
  object qProduto: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      'select * from produto where ean =:PEan ')
    Left = 704
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'PEan'
        ParamType = ptUnknown
      end>
    object qProdutoidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'SISTEMADEVENDAS.produto.idProduto'
    end
    object qProdutodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'SISTEMADEVENDAS.produto.descricao'
      Size = 100
    end
    object qProdutopreco: TFloatField
      FieldName = 'preco'
      Origin = 'SISTEMADEVENDAS.produto.preco'
    end
    object qProdutostatusVenda: TBooleanField
      FieldName = 'statusVenda'
      Origin = 'SISTEMADEVENDAS.produto.statusVenda'
    end
    object qProdutoqtdEstoque: TIntegerField
      FieldName = 'qtdEstoque'
      Origin = 'SISTEMADEVENDAS.produto.qtdEstoque'
    end
    object qProdutoean: TFloatField
      FieldName = 'ean'
      Origin = 'SISTEMADEVENDAS.produto.ean'
    end
  end
  object qValorTotal: TQuery
    DatabaseName = 'SistemaDeVendas'
    SQL.Strings = (
      
        'select sum(precoparcial) total from pedido_item where idPedido =' +
        ' :PVlTotal')
    Left = 673
    Top = 71
    ParamData = <
      item
        DataType = ftFloat
        Name = 'PVlTotal'
        ParamType = ptUnknown
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Left = 641
    Top = 71
  end
end
