import struct, sys, os
data = open(sys.argv[1], 'rb').read(); out = sys.argv[2]; os.makedirs(out, exist_ok=True)
count = struct.unpack_from('<I', data, 0xc)[0]; pos = 0x10
entries = []
for _ in range(count):
    typ, off, n = struct.unpack_from('<III', data, pos); pos += 12
    name = data[pos:pos+n].rstrip(b'\0').decode(); pos += (n + 4) & ~3
    entries.append((name, off))
for name, off in entries:
    typ, sz, sz2 = struct.unpack_from('<III', data, off)
    blob = data[off+12:off+12+sz2]
    assert blob[:4] == b'\x1bLua', (name, blob[:8])
    open(os.path.join(out, name), 'wb').write(blob)
    print(name, len(blob))
