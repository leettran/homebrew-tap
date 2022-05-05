#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        if (argc < 2) {
            printf("Usage: %s <words>\n", argv[0]);
            return -1;
        }
        NSMutableArray *words = [NSMutableArray arrayWithCapacity: (argc - 1)];
        for (int i = 1; i < argc; i++) {
          [words addObject: [NSString stringWithCString: argv[i] encoding: NSUTF8StringEncoding]];
        }
        DCSDictionaryRef s_dict = NULL;
        CFStringRef s = (CFStringRef)[words componentsJoinedByString: @" "];
        CFRange s_range = DCSGetTermRangeInString(s_dict, s, 0);
        CFStringRef s_definition = DCSCopyTextDefinition(s_dict, s, s_range);
        NSString *definition = [NSString stringWithFormat: @"Definitions of <%@>\n%@", s, (NSString *)s_definition];
        printf("%s\n", [definition UTF8String]);
    }
    return 0;
}