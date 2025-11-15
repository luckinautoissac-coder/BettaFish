@echo off
chcp 65001 >nul
echo.
echo ========================================
echo    BettaFish 依赖安装程序
echo ========================================
echo.

cd /d "%~dp0"

echo [1/2] 检查 Python 环境...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 未检测到 Python，请先安装 Python 3.8+
    echo.
    echo 下载地址: https://www.python.org/downloads/
    pause
    exit /b 1
)

python --version

echo.
echo [2/2] 安装 Python 依赖包...
echo.

pip install -r requirements.txt

echo.
if errorlevel 0 (
    echo ✅ 依赖安装完成！
    echo.
    echo 📝 下一步：
    echo    1. 编辑 .env 文件，填写 API 密钥
    echo    2. 查看 配置指南.md 了解详细配置
    echo    3. 双击 启动应用.bat 启动服务
) else (
    echo ❌ 依赖安装失败，请检查错误信息
)

echo.
pause

