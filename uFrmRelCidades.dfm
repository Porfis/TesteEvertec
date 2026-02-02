object FrmRelCidades: TFrmRelCidades
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Cidades'
  ClientHeight = 264
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object frxReport: TfrxReport
    Version = '2026.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46054.181273680600000000
    ReportOptions.LastChange = 46054.701738032400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDados
        DataSetName = 'CIDADES'
      end>
    Variables = <
      item
        Name = ' Custom'
        Value = Null
      end
      item
        Name = 'vFiltros'
        Value = ''
      end>
    Style = <>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
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
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.000000001718750003
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
            'Listagem de Cidades')
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 6.267776490000000000
          Top = 47.692949060000000000
          Width = 706.772110730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '_______________________________________')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252011670000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060100000000000
          Top = 29.000001590000000000
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
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 29.000000000000000000
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
          Left = 480.000310000000000000
          Top = 29.000000000000000000
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
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 537.031850000000000000
          Top = 29.000000000000000000
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
            'CEP Inicial')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 630.740570000000000000
          Top = 29.000000000000000000
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
            'CEP Final')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 35.779530000000000000
          Width = 706.772110730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '_______________________________________')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 611.842949570000000000
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
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDados
        DataSetName = 'CIDADES'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 2.000001590000000000
          Width = 56.692949780000000000
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
            '[CIDADES."ID_Cidade"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370129900000000000
          Top = 2.000000000000000000
          Width = 389.291589780000000000
          Height = 18.897651670000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CIDADES."Nome"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000309900000000000
          Top = 2.000000000000000000
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
          Memo.UTF8W = (
            '[CIDADES."Estado"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 537.031849900000000000
          Top = 2.000000000000000000
          Width = 79.370129780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DisplayFormat.FormatStr = '%0.8d'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CIDADES."Cep_Inicial"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 630.740569900000000000
          Top = 2.000000000000000000
          Width = 79.370129780000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DisplayFormat.FormatStr = '%0.8d'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CIDADES."Cep_Final"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 537.913730000000000000
          Top = 18.000009720000000000
          Width = 83.149659780000000000
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
            'Quantidade: ')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 629.283874510000000000
          Top = 18.000000000000000000
          Width = 79.370100210000000000
          Height = 18.897674560000000000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = -11.338590000000000000
          Width = 706.772110730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '_______________________________________')
        end
      end
    end
  end
  object frxDBDados: TfrxDBDataset
    UserName = 'CIDADES'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 16
  end
  object dsCidades: TDataSource
    DataSet = DMClientes.qryCidades
    Left = 208
    Top = 16
  end
end
