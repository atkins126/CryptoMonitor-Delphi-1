object frmDAO: TfrmDAO
  Left = 0
  Top = 0
  Caption = 'DataModule'
  ClientHeight = 353
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClientBitcoin: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.coingecko.com/api/v3'
    Params = <>
    Left = 40
    Top = 39
  end
  object RequestBitcoin: TRESTRequest
    AssignedValues = [rvConnectTimeout]
    Client = ClientBitcoin
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'moeda1'
        Options = [poAutoCreated]
        Value = 'bitcoin'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'moeda3'
        Options = [poAutoCreated]
        Value = 'cardano'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'moeda4'
        Options = [poAutoCreated]
        Value = 'ethereum'
      end>
    Resource = 
      'simple/price?ids={moeda1}%2C{moeda3}%2C{moeda4}&vs_currencies=br' +
      'l%2Cusd&include_24hr_change=true'
    Response = ResponseBitcoin
    ConnectTimeout = 300000
    SynchronizedEvents = False
    Left = 40
    Top = 99
  end
  object ResponseBitcoin: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 149
  end
  object RequestGrafico: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = ClientBitcoin
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'currency'
        Options = [poAutoCreated]
        Value = 'brl'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'day'
        Options = [poAutoCreated]
        Value = '2'
      end>
    Resource = 'coins/bitcoin/market_chart?vs_currency={currency}&days={day}'
    Response = ResponseGrafico
    Left = 115
    Top = 96
  end
  object ResponseGrafico: TRESTResponse
    ContentType = 'text/html'
    Left = 115
    Top = 149
  end
  object RequestUSD: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = ClientBitcoin
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'currency'
        Options = [poAutoCreated]
        Value = 'usd'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'day'
        Options = [poAutoCreated]
        Value = '2'
      end>
    Resource = 'coins/bitcoin/market_chart?vs_currency={currency}&days={day}'
    Response = ResponseUSD
    Left = 219
    Top = 96
  end
  object ResponseUSD: TRESTResponse
    ContentType = 'application/json'
    Left = 219
    Top = 149
  end
  object ClientLista: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://api.coingecko.com/api/v3/coins/list?include_platform=fal' +
      'se'
    Params = <>
    Left = 304
    Top = 32
  end
  object RequestLista: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = ClientLista
    Params = <>
    Response = ResponseLista
    Left = 304
    Top = 96
  end
  object ResponseLista: TRESTResponse
    Left = 304
    Top = 152
  end
end
