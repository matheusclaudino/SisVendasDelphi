inherited FUsuario: TFUsuario
  Left = 426
  Top = 221
  Caption = 'FUsuario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = tbDados
    inherited tbDados: TTabSheet
      inherited gbDados: TGroupBox
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 44
          Height = 13
          Caption = 'idUsuario'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 24
          Top = 72
          Width = 26
          Height = 13
          Caption = 'nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 24
          Top = 152
          Width = 29
          Height = 13
          Caption = 'senha'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 24
          Top = 192
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 24
          Top = 112
          Width = 46
          Height = 13
          Caption = 'username'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 64
          Top = 232
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBLookupComboBox1
        end
        object Label7: TLabel
          Left = 24
          Top = 232
          Width = 26
          Height = 13
          Caption = 'N'#237'vel'
          FocusControl = DBEidNivel
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 48
          Width = 134
          Height = 21
          DataField = 'idUsuario'
          DataSource = DS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 88
          Width = 345
          Height = 21
          DataField = 'nome'
          DataSource = DS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 168
          Width = 345
          Height = 21
          DataField = 'senha'
          DataSource = DS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 208
          Width = 345
          Height = 21
          DataField = 'email'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 24
          Top = 128
          Width = 345
          Height = 21
          DataField = 'username'
          DataSource = DS
          TabOrder = 4
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 64
          Top = 248
          Width = 339
          Height = 21
          DataField = 'NivelUsuario'
          DataSource = DS
          TabOrder = 5
        end
        object DBEidNivel: TDBEdit
          Left = 24
          Top = 248
          Width = 41
          Height = 21
          Color = 15790320
          DataField = 'nivel'
          DataSource = DS
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DataModule1.mUsuario
  end
end
