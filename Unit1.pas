unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, System.ZLib;

type
  TForm1 = class(TForm)
    btnCompress: TButton;
    btnDecompress: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure btnCompressClick(Sender: TObject);
    procedure btnDecompressClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnCompressClick(Sender: TObject);
var
  LInput, LOutput: TFileStream;
  LZip: TZCompressionStream;
begin
  { Create the Input, Output, and Compressed streams. }
  LInput := TFileStream.Create(Edit1.Text, fmOpenRead);
  LOutput := TFileStream.Create(Edit2.Text + '.zip', fmCreate);
  LZip := TZCompressionStream.Create(clDefault, LOutput);

  { Compress data. }
  LZip.CopyFrom(LInput, LInput.Size);

  { Free the streams. }
  LZip.Free;
  LInput.Free;
  LOutput.Free;
end;

procedure TForm1.btnDecompressClick(Sender: TObject);
var
  LInput, LOutput: TFileStream;
  LUnZip: TZDecompressionStream;

begin
  { Create the Input, Output, and Decompressed streams. }
  LInput := TFileStream.Create(Edit1.Text, fmOpenRead);
  LOutput := TFileStream.Create(ChangeFileExt(Edit1.Text, 'txt'), fmCreate);
  LUnZip := TZDecompressionStream.Create(LInput);

  { Decompress data. }
  LOutput.CopyFrom(LUnZip, 0);

  { Free the streams. }
  LUnZip.Free;
  LInput.Free;
  LOutput.Free;
end;

end.
