/// @description Pause
if (not paused)
{
    instance_deactivate_all(true);
    audio_pause_all();
    paused = true;
}
else
{
    paused = false;
    instance_activate_all();
    audio_resume_all();
}

