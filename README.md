# Interview Coach - AI 面试教练

> **Claude Code Skill** - 这是一个为 [Claude Code](https://claude.ai/code) 设计的技能插件

模拟真实面试场景，提供即时反馈和综合评估报告。帮助你发现不足、提升面试表现。

## 特点

- 🎯 **真实模拟** - 模拟真实面试的节奏和压力
- 📊 **精准出题** - 基于 JD 和简历精准出题
- 💬 **即时反馈** - 每道题后提供具体可操作的反馈
- 📈 **综合评估** - 5个维度评分，生成详细报告
- 💾 **历史记录** - 保存每次面试数据和报告

## 支持的面试类型

| 面试类型 | 题目分布 |
|---------|---------|
| 技术面 | 3道核心技能题 + 2道项目深挖题 + 2道场景设计题 + 1道基础知识题 |
| 行为面 | 3道STAR行为题 + 2道团队协作题 + 2道冲突处理题 + 1道领导力题 |
| HR面 | 2道求职动机题 + 2道职业规划题 + 2道文化匹配题 + 1道薪酬期望题 + 1道反问准备 |
| 系统设计面 | 2道架构设计题 + 2道scalability题 + 2道数据建模题 + 1道权衡分析题 + 1道故障排查题 |

## 评分维度

- **知识深度** - 对概念和原理的理解程度
- **逻辑条理** - 回答的结构和连贯性
- **切题度** - 回答与问题的相关性
- **表达力** - 语言表达的清晰度和准确性
- **解决问题** - 分析和解决问题的能力

## 前置要求

- [Claude Code](https://claude.ai/code) - Anthropic 官方 AI 编程助手

## 一键安装

```bash
# Clone 项目
git clone https://github.com/wsdone/interview-coach.git
cd interview-coach

# 运行安装脚本
chmod +x install.sh
./install.sh
```

或者使用 curl 一键安装：

```bash
curl -fsSL https://raw.githubusercontent.com/wsdone/interview-coach/main/install.sh | bash
```

## 手动安装

```bash
# 1. Clone 项目
git clone https://github.com/wsdone/interview-coach.git

# 2. 复制到 Claude Code skills 目录
cp -r interview-coach ~/.claude/skills/
```

## 使用方法

安装完成后，在 **Claude Code** 中输入：

```
/interview-coach
```

按照提示提供以下信息：
- 公司和岗位信息
- 岗位 JD（职位描述）
- 你的简历

系统将基于 JD 和简历生成针对性的面试题，开始模拟面试。

## 工作目录

所有文件保存在 `~/.ai-interview/` 目录下：

```
~/.ai-interview/
├── templates/
│   └── rubrics.md        # 自定义评分标准（可选）
├── history/
│   └── *.json            # 历史面试记录
└── reports/
    └── *.md              # 面试评估报告
```

## 自定义评分标准

你可以在 `~/.ai-interview/templates/rubrics.md` 中定义自己的评分标准。如果不定义，将使用默认标准。

## 项目结构

```
interview-coach/
├── install.sh         # 一键安装脚本
└── SKILL.md           # 技能定义文件（包含完整的面试流程）
```

## 许可证

MIT License

## 相关项目

- [resume-guide](https://github.com/wsdone/resume-guide) - 引导式简历生成器

## 贡献

欢迎提交 Issue 和 Pull Request！
