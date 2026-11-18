.class public Lcom/opay/relinker/elf/Program32Header;
.super Lcom/opay/relinker/elf/Elf$ProgramHeader;
.source "Program32Header.java"


# direct methods
.method public constructor <init>(Lcom/opay/relinker/elf/ElfParser;Lcom/opay/relinker/elf/Elf$Header;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/opay/relinker/elf/Elf$ProgramHeader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p2, Lcom/opay/relinker/elf/Elf$Header;->a:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p2, Lcom/opay/relinker/elf/Elf$Header;->c:J

    .line 22
    .line 23
    iget p2, p2, Lcom/opay/relinker/elf/Elf$Header;->e:I

    .line 24
    .line 25
    int-to-long v3, p2

    .line 26
    mul-long p3, p3, v3

    .line 27
    .line 28
    add-long/2addr v1, p3

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lcom/opay/relinker/elf/ElfParser;->z(Ljava/nio/ByteBuffer;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p2

    .line 33
    iput-wide p2, p0, Lcom/opay/relinker/elf/Elf$ProgramHeader;->a:J

    .line 34
    .line 35
    const-wide/16 p2, 0x4

    .line 36
    .line 37
    add-long/2addr p2, v1

    .line 38
    invoke-virtual {p1, v0, p2, p3}, Lcom/opay/relinker/elf/ElfParser;->z(Ljava/nio/ByteBuffer;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    iput-wide p2, p0, Lcom/opay/relinker/elf/Elf$ProgramHeader;->b:J

    .line 43
    .line 44
    const-wide/16 p2, 0x8

    .line 45
    .line 46
    add-long/2addr p2, v1

    .line 47
    invoke-virtual {p1, v0, p2, p3}, Lcom/opay/relinker/elf/ElfParser;->z(Ljava/nio/ByteBuffer;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    iput-wide p2, p0, Lcom/opay/relinker/elf/Elf$ProgramHeader;->c:J

    .line 52
    .line 53
    const-wide/16 p2, 0x14

    .line 54
    .line 55
    add-long/2addr v1, p2

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lcom/opay/relinker/elf/ElfParser;->z(Ljava/nio/ByteBuffer;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    iput-wide p1, p0, Lcom/opay/relinker/elf/Elf$ProgramHeader;->d:J

    .line 61
    .line 62
    return-void
.end method
