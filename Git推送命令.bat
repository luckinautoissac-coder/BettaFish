@echo off
chcp 65001 >nul
echo.
echo ========================================
echo    Git 推送到 GitHub
echo ========================================
echo.

cd /d "%~dp0"

echo [1/4] 检查 Git 状态...
git status

echo.
echo [2/4] 添加文件...
git add .

echo.
echo [3/4] 提交更改...
git commit -m "feat: 添加部署配置文件和文档"

echo.
echo [4/4] 推送到 GitHub...
git push

echo.
if errorlevel 0 (
    echo ✅ 推送成功！
    echo.
    echo 📝 下一步:
    echo    1. 访问你的 GitHub 仓库确认
    echo    2. 确保 .env 文件没有被推送
    echo    3. 选择部署平台: Railway 或 Render
    echo    4. 查看 快速部署.md 了解详细步骤
) else (
    echo ❌ 推送失败，请检查错误信息
)

echo.
pause

