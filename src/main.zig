const std = @import("std");

pub fn main() anyerror!void {
    var i: i32 = 1;
    var j: i32 = 1;
    while (i < 100000) {
        std.debug.print("FIB {}\n", .{i});
        const nw = i + j;
        i = j;
        j = nw;
    }
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
