function summarize_web
    source ~/python_script/agent/venv/bin/activate.fish
    python3 ~/python_script/agent/web_summary_agent.py $argv | tee /dev/tty | pbcopy
    deactivate
end
