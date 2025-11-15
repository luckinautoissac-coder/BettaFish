# BettaFish 微舆系统 - PowerShell 启动脚本

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   BettaFish 微舆系统启动中..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 切换到脚本所在目录
Set-Location $PSScriptRoot

Write-Host "[1/2] 检查 Python 环境..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ 未检测到 Python，请先安装 Python 3.8+" -ForegroundColor Red
    pause
    exit 1
}

Write-Host "[2/2] 启动 Flask 应用..." -ForegroundColor Yellow
Write-Host ""
Write-Host "✅ 应用启动成功！" -ForegroundColor Green
Write-Host ""
Write-Host "📱 访问地址: " -NoNewline
Write-Host "http://localhost:5000" -ForegroundColor Cyan
Write-Host ""
Write-Host "💡 提示: 首次使用请先配置 .env 文件" -ForegroundColor Yellow
Write-Host "   详见: 配置指南.md" -ForegroundColor Yellow
Write-Host ""
Write-Host "⚠️  按 Ctrl+C 可停止服务器" -ForegroundColor Magenta
Write-Host ""

Start-Sleep -Seconds 2
Start-Process "http://localhost:5000"

python app.py

