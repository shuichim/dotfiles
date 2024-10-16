function gen_commit_message
    source ~/python_script/agent/venv/bin/activate.fish
    python3 ~/python_script/agent/commit_message_generator.py $argv | tee /dev/tty | pbcopy
    deactivate
end
