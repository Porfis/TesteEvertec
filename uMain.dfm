object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmnMain
  TextHeight = 15
  object mmnMain: TMainMenu
    Left = 152
    Top = 128
    object meiCadastro: TMenuItem
      Caption = 'Cadastros'
      object meiCidade: TMenuItem
        Caption = 'Cidades'
        OnClick = meiCidadeClick
      end
      object meiCliente: TMenuItem
        Caption = 'Clientes'
        OnClick = meiClienteClick
      end
    end
    object meiRelatorio: TMenuItem
      Caption = 'Relat'#243'rios'
      object meiRelClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = meiRelClientesClick
      end
    end
    object meiSobre: TMenuItem
      Caption = 'Sobre'
      Visible = False
    end
  end
end
