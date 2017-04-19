<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
	<xsl:template match="/counter-strike">
	{
		<xsl:for-each select="settings">
		"settings": {
			<xsl:for-each select="game">
			"game": {
				"version": "<xsl:value-of select="@version"/>",
				"console": <xsl:value-of select="@console"/>,
				"username": "<xsl:value-of select="username"/>",
				"difficulty": "<xsl:value-of select="difficulty"/>",
				"tutorial-enabled": <xsl:value-of select="tutorial/@enabled"/>,
				"ui-scale": <xsl:value-of select="ui/@scale"/>,
				"units": "<xsl:value-of select="units"/>"
			}</xsl:for-each>,
			<xsl:for-each select="multiplayer">
			"multiplayer": {
				"-port": <xsl:value-of select="@port"/>,
				"chat-enabled": <xsl:value-of select="chat/@enabled"/>,
				"server": "<xsl:value-of select="server"/>",
				"maxping": <xsl:value-of select="maxping"/>
			}</xsl:for-each>,
			<xsl:for-each select="graphics">
			"graphics": {
				"video settings": {
                                        "color mode": "<xsl:value-of select="video_settings/color_mode"/>",
                                        "aspect ratio": "<xsl:value-of select="video_settings/aspect_ratio"/>",
					"resolution": "<xsl:value-of select="video_settings/resolution"/>",
					"display mode": "<xsl:value-of select="video_settings/display_mode"/>",
                                        "laptop power savings": "<xsl:value-of select="video_settings/laptop_power_savings"/>",
                                        "global shadow quality": "<xsl:value-of select="video_settings/advanced_video_options/global_shadow_quality"/>",
                                        "texture detail": "<xsl:value-of select="video_settings/advanced_video_options/texture_detail"/>",
                                        "effect detail": "<xsl:value-of select="video_settings/advanced_video_options/effect_detail"/>",
                                        "shader detail": "<xsl:value-of select="video_settings/advanced_video_options/shader_detail"/>",
					"gamma value": <xsl:value-of select="video_settings/advanced_video_options/gamma/@value"/>,
					"multicore rendering-enabled": "<xsl:value-of select="video_settings/advanced_video_options/multicore_rendering"/>",
					"texture filtering": "<xsl:value-of select="video_settings/advanced_video_options/texture_filtering_mode"/>",
					"vertical sync-enabled": "<xsl:value-of select="video_settings/advanced_video_options/wait_for_vertical_sync"/>",
                                        "motion blur-enabled": "<xsl:value-of select="video_settings/advanced_video_options/motion_blur"/>",
                                        } 
                                }</xsl:for-each>,
                                <xsl:for-each select="game_settings">
			"game settings": {
				"crosshair style": "<xsl:value-of select="crosshair_style"/>",
				"crosshair color": "<xsl:value-of select="crosshair_color"/>",
				"switch weapon on pick up": "<xsl:value-of select="switch_weapon_on_pick_up"/>",
				"always show invetory": "<xsl:value-of select="always_show_invetory"/>",
                                "viewmodel position": "<xsl:value-of select="viewmodel_position"/>",
                                "enable game instructor messages": "<xsl:value-of select="crosshair_style"/>",
                                "enable developer console": "<xsl:value-of select="crosshair_style"/>"
                                    }</xsl:for-each>,
			<xsl:for-each select="audio_settings">
			"audio settings": {
				"sound": {
					"-enabled": <xsl:value-of select="sound/@enabled"/>,
					"master volume": <xsl:value-of select="sound/master_volume"/>,
                                        "enable voice": "<xsl:value-of select="sound/speaker_configuration"/>"
                                         },
				"voicechat": {
					"-enabled": <xsl:value-of select="voicechat/@enabled"/>,
                                        "enable voice": "<xsl:value-of select="voicechat/enable_voice"/>"
                                            },
				"subtitles": {
					"-lang": "<xsl:value-of select="subtitles/@lang"/>",
					"-enabled": <xsl:value-of select="subtitles/@enabled"/>
                                                }
                                        }</xsl:for-each>,
			<xsl:for-each select="controls">
			"controls": {
				"input": "<xsl:value-of select="input"/>",
				"look type": "<xsl:value-of select="look_type"/>",
                                "look stick": "<xsl:value-of select="look_stick"/>",
                                "duck mode": "<xsl:value-of select="duck_mode"/>",
                                "walk mode": "<xsl:value-of select="walk_mode"/>",
				"sensitivity": {
					"-horizontal": <xsl:value-of select="horizontal_sensitivity"/>,
					"-vertical": <xsl:value-of select="vertical_sensitivity"/>
                                                }
                                    }</xsl:for-each>
		}
		</xsl:for-each>
	}
    </xsl:template>
</xsl:stylesheet>
