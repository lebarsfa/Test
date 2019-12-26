"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere" -products Microsoft.VisualStudio.Product.BuildTools -version [15.0,16.0) 
wget "https://aka.ms/vs/15/release/vs_buildtools.exe" -O vs_buildtools.exe
echo Exit Code is %errorlevel%
vs_buildtools.exe update --installPath "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools" --passive --norestart --wait --includeRecommended
echo Exit Code is %errorlevel%
vs_buildtools.exe modify --installPath "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools" --passive --norestart --wait --includeRecommended --add Microsoft.VisualStudio.ComponentGroup.NativeDesktop.WinXP --add Microsoft.VisualStudio.Component.WinXP
echo Exit Code is %errorlevel%
