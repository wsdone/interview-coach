#!/bin/bash

# Interview Coach - Claude Code Skill 安装脚本

set -e

echo "🎯 正在安装 Interview Coach Skill..."

# 检查 Claude Code skills 目录
SKILLS_DIR="$HOME/.claude/skills"
if [ ! -d "$SKILLS_DIR" ]; then
    echo "❌ 错误: 未找到 Claude Code skills 目录 ($SKILLS_DIR)"
    echo "请确保已安装 Claude Code"
    exit 1
fi

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 复制技能文件
echo "📋 复制技能文件到 $SKILLS_DIR/interview-coach..."
cp -r "$SCRIPT_DIR" "$SKILLS_DIR/interview-coach"

echo ""
echo "✅ Interview Coach 安装完成！"
echo ""
echo "🚀 使用方法:"
echo "   在 Claude Code 中输入: /interview-coach"
echo ""
echo "📁 安装位置: $SKILLS_DIR/interview-coach"
