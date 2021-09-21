program CameraCapture;

uses
  Forms,
  CameraForm in 'CameraForm.pas' {Camerafrm},
  VSample in 'VSample.pas',
  VFrames in 'VFrames.pas',
  DirectShow9 in 'DirectX\DirectShow9.pas',
  DirectDraw in 'DirectX\DirectDraw.pas',
  DirectSound in 'DirectX\DirectSound.pas',
  DXTypes in 'DirectX\DXTypes.pas',
  Direct3D9 in 'DirectX\Direct3D9.pas',
  Frame_Video in 'Frame_Video.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'VSample Demo';
  Application.CreateForm(TCamerafrm, Camerafrm);
  Application.Run;
end.
