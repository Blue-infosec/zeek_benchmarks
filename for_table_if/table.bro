const scan_ports: table[port] of count = {
{% for p in range(number) -%}
	[{{ p }}/tcp] = {{ p }},
{% endfor %}
};

local x = 0;
while ( x < {{ N }} ) {
    for(p in scan_ports) {
    }
    ++x;
}
