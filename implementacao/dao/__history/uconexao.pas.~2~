unit uconexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.PG, FireDAC.Phys.MSSQL;

type
  Tconexao = class
  private
    FDriver: TFDPhysPGDriverLink;
    FQuery: TFDQuery;
    FCursor: TFDGUIxWaitCursor;
    FDriverId: string;
    FDataBase: string;
    FPassword: string;
    FFDConect: TFDConnection;
    FUserName: string;
    FServer: string;
    procedure SetCursor(const Value: TFDGUIxWaitCursor);
    procedure SetDataBase(const Value: string);
    procedure SetDriver(const Value: TFDPhysPGDriverLink);
    procedure SetDriverId(const Value: string);
    procedure SetFDConect(const Value: TFDConnection);
    procedure SetPassword(const Value: string);
    procedure SetQuery(const Value: TFDQuery);
    procedure SetServer(const Value: string);
    procedure SetUserName(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    function Conectar: TFDConnection;
  published
    property DataBase: string read FDataBase write SetDataBase;
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property DriverId: string read FDriverId write SetDriverId;
    property Driver: TFDPhysPGDriverLink read FDriver write SetDriver;
    property Cursor: TFDGUIxWaitCursor read FCursor write SetCursor;
    property Query: TFDQuery read FQuery write SetQuery;
    property FDConect: TFDConnection read FFDConect write SetFDConect;
  end;

implementation

{ Tconexao }

function Tconexao.Conectar: TFDConnection;
begin
  FDConect.Params.Add('Database=' + FDataBase);
  FDConect.Params.Add('DriverID=' + FDriverId);
  FDConect.Params.Add('User_Name=' + FUserName);
  FDConect.Params.Add('Password=' + FPassword);
  FDConect.Params.Add('Server=' + FServer);

  FDConect.Connected := True;

  Result := FDConect;
end;

constructor Tconexao.Create;
begin
  FDConect := TFDConnection.Create(nil);
  FDriver := TFDPhysPGDriverLink.Create(nil);
  FCursor := TFDGUIxWaitCursor.Create(nil);
  FQuery := TFDQuery.Create(nil);

  FDConect.LoginPrompt := False;
end;

destructor Tconexao.Destroy;
begin
  FDriver.Destroy;
  FCursor.Destroy;
  FQuery.Destroy;
  FDConect.Connected := False;
  FDConect.Destroy;
  inherited;
end;

procedure Tconexao.SetCursor(const Value: TFDGUIxWaitCursor);
begin
  FCursor := Value;
end;

procedure Tconexao.SetDataBase(const Value: string);
begin
  FDataBase := Value;
end;

procedure Tconexao.SetDriver(const Value: TFDPhysPGDriverLink);
begin
  FDriver := Value;
end;

procedure Tconexao.SetDriverId(const Value: string);
begin
  FDriverId := Value;
end;

procedure Tconexao.SetFDConect(const Value: TFDConnection);
begin
  FFDConect := Value;
end;

procedure Tconexao.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure Tconexao.SetQuery(const Value: TFDQuery);
begin
  FQuery := Value;
end;

procedure Tconexao.SetServer(const Value: string);
begin
  FServer := Value;
end;

procedure Tconexao.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.

