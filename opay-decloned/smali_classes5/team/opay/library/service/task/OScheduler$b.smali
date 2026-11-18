.class public Lteam/opay/library/service/task/OScheduler$b;
.super Ljava/lang/Object;
.source "OScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/library/service/task/OScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:J

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lteam/opay/library/service/task/OScheduler$b;->f:I

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lteam/opay/library/service/task/OScheduler$b;->b:Ljava/lang/ref/Reference;

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lteam/opay/library/service/task/OScheduler$b;->a:Ljava/lang/ref/Reference;

    .line 7
    :cond_3
    iput-object p3, p0, Lteam/opay/library/service/task/OScheduler$b;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/library/service/task/OScheduler$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/library/service/task/OScheduler$b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lyfe;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lteam/opay/library/service/task/OScheduler$b;->c(ILjava/lang/Runnable;)Lyfe;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public b(Ljava/lang/Runnable;)Lyfe;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lteam/opay/library/service/task/OScheduler$b;->c(ILjava/lang/Runnable;)Lyfe;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public c(ILjava/lang/Runnable;)Lyfe;
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/library/service/task/OScheduler$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    iget-wide v0, p0, Lteam/opay/library/service/task/OScheduler$b;->e:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-ltz v4, :cond_5

    .line 18
    .line 19
    iget v2, p0, Lteam/opay/library/service/task/OScheduler$b;->f:I

    .line 20
    .line 21
    if-lez v2, :cond_4

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-le v2, v3, :cond_1

    .line 25
    .line 26
    const-wide/16 v2, 0xa

    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-ltz v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "OScheduler task parameters error. [loop count "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lteam/opay/library/service/task/OScheduler$b;->f:I

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", delay < 10: "

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-wide v0, p0, Lteam/opay/library/service/task/OScheduler$b;->e:J

    .line 56
    .line 57
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "]"

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Lteam/opay/library/service/task/OScheduler;->c(I)Li87;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    new-instance p1, Lteam/opay/library/service/task/OScheduler$d;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p1, v0}, Lteam/opay/library/service/task/OScheduler$d;-><init>(Lteam/opay/library/service/task/OScheduler$a;)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lteam/opay/library/service/task/a;

    .line 88
    .line 89
    iget-object v3, p0, Lteam/opay/library/service/task/OScheduler$b;->a:Ljava/lang/ref/Reference;

    .line 90
    .line 91
    iget-object v4, p0, Lteam/opay/library/service/task/OScheduler$b;->b:Ljava/lang/ref/Reference;

    .line 92
    .line 93
    iget-object v5, p0, Lteam/opay/library/service/task/OScheduler$b;->c:Ljava/lang/String;

    .line 94
    .line 95
    iget-boolean v6, p0, Lteam/opay/library/service/task/OScheduler$b;->d:Z

    .line 96
    .line 97
    move-object v2, v9

    .line 98
    move-object v7, p2

    .line 99
    move-object v8, p1

    .line 100
    invoke-direct/range {v2 .. v8}, Lteam/opay/library/service/task/a;-><init>(Ljava/lang/ref/Reference;Ljava/lang/ref/Reference;Ljava/lang/String;ZLjava/lang/Runnable;Lteam/opay/library/service/task/a$a;)V

    .line 101
    .line 102
    .line 103
    new-instance p2, Lyfe;

    .line 104
    .line 105
    iget-wide v3, p0, Lteam/opay/library/service/task/OScheduler$b;->e:J

    .line 106
    .line 107
    iget-boolean v5, p0, Lteam/opay/library/service/task/OScheduler$b;->g:Z

    .line 108
    .line 109
    iget v6, p0, Lteam/opay/library/service/task/OScheduler$b;->f:I

    .line 110
    .line 111
    move-object v0, p2

    .line 112
    invoke-direct/range {v0 .. v6}, Lyfe;-><init>(Li87;Lteam/opay/library/service/task/a;JZI)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lteam/opay/library/service/task/OScheduler$d;->b(Lyfe;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Lteam/opay/library/service/task/OScheduler;->d(Lyfe;)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "OScheduler task parameters error. [type no defined] "

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string p2, "OScheduler task parameters error. [task null]"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v0, "OScheduler task parameters error. [loop count <= 0] "

    .line 161
    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v0, p0, Lteam/opay/library/service/task/OScheduler$b;->f:I

    .line 166
    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v0, "OScheduler task parameters error. [delay time < 0] "

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-wide v0, p0, Lteam/opay/library/service/task/OScheduler$b;->e:J

    .line 191
    .line 192
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    const-string p2, "OScheduler task parameters error. [tag empty]"

    .line 206
    .line 207
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1
.end method
