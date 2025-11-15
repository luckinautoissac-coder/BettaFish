@echo off
chcp 65001 >nul
echo.
echo ========================================
echo    BettaFish 微舆系统启动中...
echo ========================================
echo.

cd /d "%~dp0"

echo [1/2] 检查 Python 环境...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 未检测到 Python，请先安装 Python 3.8+
    pause
    exit /b 1
)

echo [2/2] 启动 Flask 应用...
echo.
echo ✅ 应用启动成功！
echo.
echo 📱 访问地址: http://localhost:5000
echo.
echo 💡 提示: 首次使用请先配置 .env 文件
echo    详见: 配置指南.md
echo.
echo ⚠️  按 Ctrl+C 可停止服务器
echo.

timeout /t 2 >nul
start http://localhost:5000

python app.py

pause

