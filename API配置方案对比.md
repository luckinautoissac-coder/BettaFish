# API 配置方案对比 🔑

## 📊 快速对比

| 特性 | AIHubMix 统一密钥 | 多个官方密钥 |
|------|-----------------|-------------|
| **注册数量** | 1 个账号 ✅ | 4-6 个账号 |
| **配置难度** | 简单 ✅ | 中等 |
| **成本** | 中等 | 最低 ✅ |
| **免费额度** | 看平台政策 | 很多 ✅ |
| **稳定性** | 依赖中转 | 官方直连 ✅ |
| **国内访问** | 无障碍 ✅ | 部分受限 |
| **适合人群** | 新手、快速测试 | 长期使用、预算敏感 |

---

## 🎯 推荐方案

### 方案 A: 混合配置（最佳平衡）⭐⭐⭐⭐⭐

**适合**: 追求性价比 + 稳定性的用户

**策略**: 
- 国内模型用官方（Kimi、DeepSeek、通义千问）
- 国外模型用中转（Gemini、Claude）

**配置示例**:
```env
# 国内官方 - DeepSeek（超便宜，新用户 500 万 tokens）
INSIGHT_ENGINE_API_KEY=sk-your-deepseek-key
INSIGHT_ENGINE_BASE_URL=https://api.deepseek.com
INSIGHT_ENGINE_MODEL_NAME=deepseek-chat

QUERY_ENGINE_API_KEY=sk-your-deepseek-key
QUERY_ENGINE_BASE_URL=https://api.deepseek.com
QUERY_ENGINE_MODEL_NAME=deepseek-chat

# 国外模型 - 通过 AIHubMix 中转
MEDIA_ENGINE_API_KEY=sk-your-aihubmix-key
MEDIA_ENGINE_BASE_URL=https://aihubmix.com/v1
MEDIA_ENGINE_MODEL_NAME=gemini-2.0-flash-exp

REPORT_ENGINE_API_KEY=sk-your-aihubmix-key
REPORT_ENGINE_BASE_URL=https://aihubmix.com/v1
REPORT_ENGINE_MODEL_NAME=gemini-2.0-flash-exp
```

**成本**: 每次分析约 ¥0.1 - ¥0.3
**注册**: 2 个账号（DeepSeek + AIHubMix）

---

### 方案 B: 极简方案（最简单）⭐⭐⭐⭐

**适合**: 新手、快速测试、不想折腾

**策略**: 
- 只注册 AIHubMix 一个账号
- 所有模型统一用 AIHubMix

**优势**:
- ✅ 5 分钟完成配置
- ✅ 只需要记住一个密钥
- ✅ 统一管理费用
- ✅ 国内访问无障碍

**劣势**:
- ❌ 成本比官方略高
- ❌ 依赖中转服务稳定性

**配置**: 参考 `AIHubMix配置示例.txt`

**成本**: 每次分析约 ¥0.3 - ¥0.8
**注册**: 1 个账号（AIHubMix）

---

### 方案 C: 极致省钱方案（最便宜）⭐⭐⭐⭐⭐

**适合**: 预算敏感、长期使用、技术用户

**策略**: 
- 全部使用官方渠道
- 优先使用有免费额度的服务

**配置**:
```env
# DeepSeek - 新用户 500 万 tokens！
INSIGHT_ENGINE_API_KEY=sk-deepseek
INSIGHT_ENGINE_BASE_URL=https://api.deepseek.com
INSIGHT_ENGINE_MODEL_NAME=deepseek-chat

QUERY_ENGINE_API_KEY=sk-deepseek
QUERY_ENGINE_BASE_URL=https://api.deepseek.com
QUERY_ENGINE_MODEL_NAME=deepseek-chat

REPORT_ENGINE_API_KEY=sk-deepseek
REPORT_ENGINE_BASE_URL=https://api.deepseek.com
REPORT_ENGINE_MODEL_NAME=deepseek-chat

MEDIA_ENGINE_API_KEY=sk-deepseek
MEDIA_ENGINE_BASE_URL=https://api.deepseek.com
MEDIA_ENGINE_MODEL_NAME=deepseek-chat
```

**优势**:
- ✅ **新用户送 500 万 tokens**，可以跑很久
- ✅ 成本极低（¥0.001/1K tokens）
- ✅ 官方直连，稳定可靠

**劣势**:
- ❌ DeepSeek 多模态能力一般（无法分析图片）

**成本**: 每次分析约 ¥0.05 - ¥0.15
**注册**: 1 个账号（DeepSeek）
**免费额度**: 500 万 tokens ≈ 约 1000 次分析

---

## 💡 我的推荐

### 如果你是新手，想快速测试：
👉 **方案 B（AIHubMix 统一密钥）**
- 申请地址: https://aihubmix.com/?aff=8Ds9
- 只需 5 分钟配置完成

### 如果你想长期使用，追求性价比：
👉 **方案 A（混合配置）**
- 注册 DeepSeek: https://platform.deepseek.com/
- 注册 AIHubMix: https://aihubmix.com/?aff=8Ds9

### 如果你预算有限，想免费体验：
👉 **方案 C（DeepSeek 全包）**
- 申请地址: https://platform.deepseek.com/
- 新用户送 500 万 tokens，完全够用！

---

## 🚀 快速开始

### 第 1 步: 选择方案

根据上面的对比，选择最适合你的方案。

### 第 2 步: 注册账号

- **方案 B**: 只注册 AIHubMix
- **方案 A**: 注册 DeepSeek + AIHubMix  
- **方案 C**: 只注册 DeepSeek

### 第 3 步: 复制配置

将对应的配置示例复制到 `.env` 文件：
- `AIHubMix配置示例.txt`（方案 B）
- 混合配置（方案 A，手动组合）
- 全 DeepSeek（方案 C，上面有示例）

### 第 4 步: 填写密钥

将配置中的 `sk-your-xxx-key` 替换成你的真实密钥。

### 第 5 步: 重启应用

```bash
npm run dev
```

---

## 📌 重要提示

### AIHubMix 支持的模型

AIHubMix 等中转平台通常支持：
- ✅ GPT-3.5 / GPT-4 / GPT-4o 系列
- ✅ Claude 系列
- ✅ Gemini 系列
- ✅ 其他主流模型

**但不一定支持**:
- ❌ Kimi（月之暗面）
- ❌ 通义千问（可能需要单独配置）

所以如果想用 Kimi 和通义千问，需要单独申请官方密钥。

### 模型选择建议

不同 Agent 适合不同模型：

| Agent | 推荐模型 | 原因 |
|-------|---------|------|
| **Insight** | DeepSeek, GPT-4o | 需要深度分析 |
| **Query** | DeepSeek, GPT-4o-mini | 大量调用，需要省钱 |
| **Report** | Claude, Gemini | 擅长长文本生成 |
| **Media** | Gemini, GPT-4o | 需要多模态能力 |

---

## ❓ 常见问题

### Q: AIHubMix 一个密钥真的能连所有模型吗？

**A**: 可以，但有前提：
- ✅ 只要是 AIHubMix 平台支持的模型都可以
- ❌ 不支持的模型（如 Kimi）需要单独配置
- 💡 建议先查看 AIHubMix 的模型列表

### Q: 使用中转服务安全吗？

**A**: 
- ✅ 正规中转服务（如 AIHubMix、302.AI）一般是安全的
- ⚠️ 不要在请求中传输敏感数据
- 💡 生产环境建议使用官方 API

### Q: DeepSeek 500 万 tokens 能用多久？

**A**: 
- 一次完整分析约 2000-5000 tokens
- 500 万 tokens ≈ **1000-2500 次完整分析**
- 对个人用户来说，够用很久了！

### Q: 我可以混用不同的密钥吗？

**A**: 
- ✅ **完全可以！** 这就是方案 A（混合配置）
- 每个 Agent 可以独立配置不同的密钥
- 例如: Insight 用 Kimi，Query 用 DeepSeek，Report 用 AIHubMix

---

## 🎉 总结

### 如果你只想要一个答案：

**推荐先用 方案 C（全 DeepSeek）**

理由：
1. ✅ 新用户送 500 万 tokens，**完全免费**
2. ✅ 只需注册一个账号，配置简单
3. ✅ DeepSeek 性能不错，满足大部分需求
4. ✅ 成本极低，长期使用也划算
5. ⚠️ 唯一缺点：不支持图片分析

**等需要多模态功能时，再补充配置 AIHubMix 的 Gemini 即可！**

---

需要配置帮助？查看：
- `AIHubMix配置示例.txt` - 统一密钥配置
- `官方渠道配置示例.txt` - 多渠道配置
- `配置指南.md` - 详细配置说明

祝你配置顺利！🚀

