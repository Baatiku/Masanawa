.class public final Lteam/opay/business/push/core/delegate/GlobalDialogMessageFilter;
.super Ljava/lang/Object;
.source "GlobalDialogMessageFilter.kt"

# interfaces
.implements Lteam/opay/business/push/core/biz/IMessageFilter;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/business/push/core/biz/IMessageFilter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/business/push/core/delegate/GlobalDialogMessageFilter;",
        "Lteam/opay/business/push/core/biz/IMessageFilter;",
        "<init>",
        "()V",
        "filter",
        "",
        "context",
        "Landroid/content/Context;",
        "message",
        "Lteam/opay/business/push/core/api/PushMessage;",
        "pushSource",
        "",
        "business-push-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public filter(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/push/core/api/PushMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "pushSource"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getMessageStyle()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p3, "global_dialog"

    .line 21
    .line 22
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    const-class v0, Lteam/opay/core/common/base/DialogEntity;

    .line 44
    .line 45
    invoke-static {p3, v0}, Lkt6;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Lteam/opay/core/common/base/DialogEntity;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p3

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move-object p3, p1

    .line 55
    :goto_0
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    .line 62
    invoke-static {p3}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    :goto_2
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x2

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    move-object v0, p3

    .line 78
    check-cast v0, Lteam/opay/core/common/base/DialogEntity;

    .line 79
    .line 80
    invoke-virtual {p2}, Lteam/opay/business/push/core/api/PushMessage;->getMessageType()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string v2, "KickOut"

    .line 85
    .line 86
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const-string v2, "\u5f53\u524dactivity="

    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    sget-object p2, Ld00;->a:Ld00;

    .line 95
    .line 96
    invoke-virtual {p2}, Ld00;->e()Landroid/app/Activity;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    sget-object v4, Lik8;->c:Lik8;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v4, v2, p1, v1, p1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    instance-of v2, v3, Lteam/opay/core/common/base/HiltActivity;

    .line 127
    .line 128
    if-eqz v2, :cond_1

    .line 129
    .line 130
    sget-object v2, Lfq7;->a:Lfq7;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Lfq7;->b(Lteam/opay/core/common/base/DialogEntity;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_1
    instance-of v2, v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 137
    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 141
    .line 142
    invoke-static {v3, v0}, Let;->t(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/core/common/base/DialogEntity;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_3
    invoke-virtual {p2}, Ld00;->f()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_4

    .line 150
    .line 151
    sget-object p2, Lr6c;->d:Lr6c;

    .line 152
    .line 153
    invoke-virtual {p2}, Lteam/opay/business/push/core/IPushStorage;->e()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_3
    sget-object p2, Ld00;->a:Ld00;

    .line 158
    .line 159
    invoke-virtual {p2}, Ld00;->e()Landroid/app/Activity;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_4

    .line 164
    .line 165
    sget-object v3, Lik8;->c:Lik8;

    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v3, v2, p1, v1, p1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    instance-of v2, p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 190
    .line 191
    if-eqz v2, :cond_4

    .line 192
    .line 193
    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 194
    .line 195
    invoke-static {p2, v0}, Let;->t(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/core/common/base/DialogEntity;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_4
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    if-eqz p2, :cond_5

    .line 203
    .line 204
    sget-object p3, Lik8;->c:Lik8;

    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v2, "-----global dialog error ! throwable: "

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p3, p2, p1, v1, p1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_5
    return-void
.end method

.method public matchType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/business/push/core/biz/IMessageFilter$b;->a(Lteam/opay/business/push/core/biz/IMessageFilter;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
