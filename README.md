# Interactive-Self-Portrait-NMD-160
Description: 
	The goal of this project was to create an interactive self portrait using Processing. My project uses the movement of the mouse, mouse clicks, and microphone input to control interaction.

Motivation:
	I recently discovered Adobe’s live facial recognition and animation software and was impressed by how accurately live movement was translated to animation of a 2d character, including blinking eyes and a mouth that mimed the user’s. Without using facial recognition, I decided to use volume as a means to animate the character’s mouth. Blinking is controlled by the mouse in order to give control to the user to convey different emotion and variety, though I would have liked to incorporate a random blink interval to give the portrait an additional sense of life when not controlled by the user. 

Requirements:
	Processing, the Processing sound library, and a microphone.

Use Instructions:
	Moving the mouse in any direction will alter the color of the character’s shirt. Clicking anywhere with the mouse will cause the character to blink. The character’s mouth is controlled by audio input, the mouth opens in response to sound and opens wider to louder sounds. When no sound is detected, the mouth closes. The sensitivity of the microphone input can be controlled in line 64 of the program, it is currently calibrated for the built in mic of a laptop; if using an external microphone it may be necessary to enter a larger value in order to raise the threshold. 

Documentation Video:
	https://www.youtube.com/watch?v=JY6F73eqnqY 
