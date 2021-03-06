global scan_ports: set[port] = {22/tcp,3389/tcp};
function check_port(p: port): bool
{
    local sp = scan_ports;
    return (p in sp);
}

local p10 = 10/tcp;
local p3389 = 3389/tcp;
local x = 0;
while ( x < 2000000 ) {
    if(check_port(p10))
        ++x;

    if(check_port(p3389))
        ++x;
}
