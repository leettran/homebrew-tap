#import <CoreFoundation/CoreFoundation.h>
#import <CoreServices/CoreServices.h>

char *join(const char *s1, const char *s2)
{
    size_t len1 = strlen(s1);
    size_t len2 = strlen(s2);
    char *s = malloc(len1 + len2 + 2);
    memcpy(s, s1, len1);
    s[len1] = ' ';
    memcpy(s + len1 + 1, s2, len2 + 1);
    return s;
}

char *getCStringFromCFString(CFStringRef s) {
    if (s == NULL) {
        return NULL;
    }
    CFStringEncoding encoding = kCFStringEncodingUTF8;
    CFIndex length = CFStringGetLength(s);
    CFIndex maxSize = CFStringGetMaximumSizeForEncoding(length, encoding);
    char *buffer = (char *)malloc(maxSize);
    if (CFStringGetCString(s, buffer, maxSize, encoding)) {
        return buffer;
    }
    return NULL;
}

int main(int argc, char *argv[])
{
    if (argc < 2) {
        printf("Usage: %s <words>\n", argv[0]);
        return -1;
    }

    char *words = argv[1];
    for (int i = 2; i < argc; i++) words = join(words, argv[i]);
    int exitCode = 0;
    CFStringRef searchPhrase = CFStringCreateWithCString(NULL, words, kCFStringEncodingUTF8);
    if (searchPhrase) {
        CFRange searchRange = DCSGetTermRangeInString(NULL, searchPhrase, 0);
        CFStringRef definition = DCSCopyTextDefinition(NULL, searchPhrase, searchRange);
        if (definition) {
            char *output = getCStringFromCFString(definition);
            if (output) {
                printf("Definitions of <%s>\n%s\n", words, output);
                free(output);
            } else {
                printf("An error occured. Exit.\n");
                exitCode = -1;
            }
            CFRelease(definition);
        } else {
            printf("No definition found for <%s>\n", words);
        }
        CFRelease(searchPhrase);
    }

    return exitCode;
}