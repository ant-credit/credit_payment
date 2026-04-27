# 芝麻先享（动态金额模式）Skill - 参考文档

本目录包含芝麻先享技能的完整参考文档。

## 目录结构

```
references/
├── README.md              # 本文档
├── config.json.example    # 配置文件示例
├── workflow.md            # 业务流程详解（免确认/需确认模式流程图）
├── api-reference.md       # API 参考文档（接口列表、命令格式、使用示例）
├── example-guide.md       # 示例报文查询与校验指南
├── glossary.md            # 字段词典（字段含义、来源、使用场景）
├── faq.md                 # 常见问题参考文档
├── examples/              # 示例报文目录
│   ├── sign-request.md           # 开通服务示例
│   ├── query-agreement-request.md # 查询协议示例
│   ├── order-request.md          # 免确认下单示例
│   ├── create-order-request.md   # 用户确认下单示例
│   ├── query-request.md          # 查询订单示例
│   ├── pay-request.md            # 扣款示例
│   ├── finish-request.md         # 结束订单示例
│   ├── refund-request.md         # 退款示例
│   └── query-trade-request.md    # 交易查询示例
├── zhima-credit-payafteruse.sh  # Linux/Mac 启动脚本
└── zhima-credit-payafteruse.bat # Windows 启动脚本
```

## 文档导航

### 新手入门

| 文档 | 说明 |
|------|------|
| [配置文件示例](config.json.example) | 支付宝开放平台应用配置模板 |
| [业务流程详解](workflow.md) | 免确认/需确认两种模式的完整流程图和命令示例 |

### API 参考

| 文档 | 说明 |
|------|------|
| [API 参考文档](api-reference.md) | 接口列表、命令格式、使用示例、订单状态说明 |
| [示例报文目录](examples/) | 各接口完整的请求/响应报文及字段说明 |
| [示例报文查询与校验](example-guide.md) | 如何查询示例报文、校验请求报文正确性 |

### 字段与问题

| 文档 | 说明 |
|------|------|
| [字段词典](glossary.md) | 各字段的含义、来源、使用场景、流转关系 |
| [常见问题](faq.md) | 开通下单、扣款支付、取消退款等场景问题解答 |

> 💡 评测方案和报告位于 `tests/` 目录，不随发布版本打包。

## 快速开始

### 1. 配置文件

将 `config.json.example` 复制为 `~/.antConfig/config.json`：

```bash
mkdir -p ~/.antConfig
cp references/config.json.example ~/.antConfig/config.json
```

编辑配置文件，填入真实的配置值：

```json
{
  "X-OpenPlatform-appId": "您的应用ID",
  "X-OpenPlatform-PrivateKey": "您的应用私钥",
  "X-OpenPlatform-alipayPublicKey": "支付宝公钥"
}
```

### 2. 运行脚本

```bash
# Linux/Mac
./references/zhima-credit-payafteruse.sh <command> [options]

# Windows
references\zhima-credit-payafteruse.bat <command> [options]

# 或使用 Node.js
node scripts/zhima-credit-payafteruse.js <command> [options]
```

### 3. 可用命令

| 命令 | 说明 |
|------|------|
| `sign` | 开通服务 |
| `query-agreement` | 查询协议 |
| `order` | 免确认下单 |
| `create-order` | 用户确认下单 |
| `query` | 查询订单 |
| `pay` | 扣款 |
| `query-trade` | 查询交易 |
| `refund` | 退款 |
| `finish` | 结束订单 |
| `last-request` | 查看本次请求报文 |
| `last-result` | 查看本次响应报文 |

详细命令参数请参阅 [API 参考文档](api-reference.md)。