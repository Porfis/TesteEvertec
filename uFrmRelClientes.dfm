object frmRelClientes: TfrmRelClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 250
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 200
    Align = alTop
    TabOrder = 0
    object lblCodCli: TLabel
      Left = 20
      Top = 20
      Width = 135
      Height = 13
      Caption = 'C'#243'digo Cliente (Inicial / Final'
    end
    object lblCodCid: TLabel
      Left = 20
      Top = 70
      Width = 139
      Height = 13
      Caption = 'C'#243'digo Cidade (Inicial / Final)'
    end
    object lblEstado: TLabel
      Left = 20
      Top = 120
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object edtCliIni: TEdit
      Left = 20
      Top = 39
      Width = 80
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object edtCliFim: TEdit
      Left = 110
      Top = 39
      Width = 80
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object edtCidIni: TEdit
      Left = 20
      Top = 89
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object edtCidFim: TEdit
      Left = 110
      Top = 89
      Width = 80
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object cbEstado: TComboBox
      Left = 20
      Top = 139
      Width = 60
      Height = 21
      TabOrder = 4
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object chkAgruparCidade: TCheckBox
      Left = 250
      Top = 39
      Width = 150
      Height = 17
      Caption = 'Agrupar por Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object btnImprimir: TButton
    Left = 320
    Top = 210
    Width = 110
    Height = 30
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'dbClientes'
    CloseDataSource = False
    DataSet = DMClientes.qryClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 248
    Top = 184
    FieldDefs = <
      item
        FieldName = 'ID_Cliente'
      end
      item
        FieldName = 'CPF_CNPJ_Cliente'
        FieldType = fftString
        Size = 14
      end
      item
        FieldName = 'Nome'
        FieldType = fftString
        Size = 150
      end
      item
        FieldName = 'Telefone'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'Endereco'
        FieldType = fftString
        Size = 150
      end
      item
        FieldName = 'Bairro'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'Complemento'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'E_mail'
        FieldType = fftString
        Size = 150
      end
      item
        FieldName = 'Cep'
      end
      item
        FieldName = 'ID_Cidade'
      end
      item
        FieldName = 'NOME_CIDADE'
        FieldType = fftString
        Size = 100
      end>
  end
  object frxReport: TfrxReport
    Version = '2026.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46054.181273680600000000
    ReportOptions.LastChange = 46054.935518900460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  GroupHeader1.Visible := <vAgrupar>;  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  GroupFooter1.Visible := <vAgrupar>;  '
      'end;'
      ''
      'procedure Child1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Child1.Visible := Not <vAgrupar>;  '
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo37.Visible := Not <vAgrupar>;'
      '  if <vAgrupar> then'
      '    Memo36.Align := baWidth'
      '  else'
      '    Memo36.Align := baNone;    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'dbClientes'
      end>
    Variables = <
      item
        Name = ' Custom'
        Value = Null
      end
      item
        Name = 'vFiltros'
        Value = ''
      end
      item
        Name = 'vAgrupar'
        Value = ''
      end>
    Style = <>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 164.409545900156300000
          Width = 718.110717770000000000
          Height = 30.236238670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem de Clientes')
          ParentFont = False
          VAlign = vaCenter
        end
        object txtFiltros: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559056490000000000
          Top = 41.574831630000000000
          Width = 597.165740730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[vFiltros]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 49.133890000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236241670000000000
        Top = 109.606370000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Child = frxReport.Child1
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 941.102999570000000000
          Width = 98.267750210000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page] / [TotalPages#]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 347.716760000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset
        DataSetName = 'dbClientes'
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 6.000001590000000000
          Width = 49.133889780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbClientes."ID_Cliente"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 64.370129900000000000
          Top = 6.000000000000000000
          Width = 257.008039780000000000
          Height = 18.897651670000000000
          StretchMode = smActualHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."Nome"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 327.307359900000000000
          Top = 6.000000000000000000
          Width = 109.606369780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."CPF_CNPJ_Cliente"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 443.031849900000000000
          Top = 6.000000000000000000
          Width = 105.826839780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."Telefone"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 554.740569900000000000
          Top = 6.000000000000000000
          Width = 219.212739780000000000
          Height = 18.897651670000000000
          StretchMode = smActualHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."E_mail"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362709900000000000
          Top = 6.000000000000000000
          Width = 170.078849780000000000
          Height = 18.897651670000000000
          StretchMode = smActualHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."ID_Cidade"] - [dbClientes."NOME_CIDADE"] ')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000619900000000000
          Top = 6.000000000000000000
          Width = 79.370129780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbClientes."Cep"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 64.370129900000000000
          Top = 25.456710000000000000
          Width = 71.811069780000000000
          Height = 18.897651670000000000
          StretchMode = smActualHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o: ')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 141.929190000000000000
          Top = 25.456710000000000000
          Width = 895.748609780000000000
          Height = 18.897651670000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smActualHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[dbClientes."Endereco"] - Bairro: [dbClientes."Bairro"] - Comple' +
              'mento: [dbClientes."Complemento"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = -15.118120000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 48.236264560000000000
        Top = 536.693260000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 843.677490000000000000
          Top = 24.338599720000000000
          Width = 113.385899780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 962.937880520000000000
          Top = 24.338590000000000000
          Width = 79.370100210000000000
          Height = 18.897674560000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        KeepWithData = False
        Condition = 'dbClientes."ID_Cidade"'
        Stretched = True
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 65.559060000000000000
          Top = 9.559060000000000000
          Width = 64.252009780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade: ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 129.252010000000000000
          Top = 9.559060000000000000
          Width = 910.866729780000000000
          Height = 18.897651670000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[dbClientes."ID_Cidade"] - [dbClientes."NOME_CIDADE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 964.000620000000000000
          Top = 43.354361590000000000
          Width = 79.370129780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530100000000000
          Top = 43.354361590000000000
          Width = 49.133889780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 64.590600000000000000
          Top = 43.354361590000000000
          Width = 56.692949780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 327.527830000000000000
          Top = 43.354361590000000000
          Width = 86.929189780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF / CNPJ')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 443.252320000000000000
          Top = 43.354361590000000000
          Width = 105.826839780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 554.961040000000000000
          Top = 43.354361590000000000
          Width = 219.212739780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 51.574854560000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        KeepWithData = False
        Stretched = True
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 839.897960000000000000
          Top = 28.897659720000000000
          Width = 117.165429780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Cidade:')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 962.937880520000000000
          Top = 28.897650000000000000
          Width = 79.370100210000000000
          Height = 18.897674560000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = -7.559060000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Child1OnBeforePrint'
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060100000000000
          Top = 3.779531590000000000
          Width = 49.133889780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.370130000000000000
          Top = 3.779531590000000000
          Width = 56.692949780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 327.307360000000000000
          Top = 3.779531590000000000
          Width = 86.929189780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF / CNPJ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 443.031850000000000000
          Top = 3.779531590000000000
          Width = 105.826839780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 554.740570000000000000
          Top = 3.779531590000000000
          Width = 219.212739780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 3.779531590000000000
          Width = 151.181199780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000620000000000000
          Top = 3.779531590000000000
          Width = 79.370129780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 1035.591220730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '______________')
        end
      end
    end
  end
end
