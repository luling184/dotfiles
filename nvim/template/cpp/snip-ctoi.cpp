int ctoi(const char c)
{
    if ('0' <= c && c <= '9') { return (c - '0'); }
    return -1;
}
