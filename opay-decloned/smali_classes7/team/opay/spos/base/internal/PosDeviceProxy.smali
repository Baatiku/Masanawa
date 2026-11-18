.class public final Lteam/opay/spos/base/internal/PosDeviceProxy;
.super Ljava/lang/Object;
.source "PosDevices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u000c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\t\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\u0010\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0012\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0014\u0010\u000fR\u001b\u0010\u0017\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0016\u0010\u000fR\u001b\u0010\u0019\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\t\u001a\u0004\u0008\u0018\u0010\u000fR\u001b\u0010\u001a\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0013\u0010\u000fR\u001b\u0010\u001c\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\t\u001a\u0004\u0008\u001c\u0010\u000fR\u001b\u0010\u001e\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001e\u0010\u000fR\u001b\u0010 \u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\t\u001a\u0004\u0008 \u0010\u000fR\u001b\u0010\"\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\t\u001a\u0004\u0008\"\u0010\u000fR\u001b\u0010$\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\t\u001a\u0004\u0008\u0011\u0010\u000fR\u001b\u0010&\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\t\u001a\u0004\u0008&\u0010\u000fR\u001b\u0010(\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\t\u001a\u0004\u0008(\u0010\u000fR\u001b\u0010*\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\t\u001a\u0004\u0008*\u0010\u000fR\u001b\u0010,\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\t\u001a\u0004\u0008,\u0010\u000fR\u001b\u0010.\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\t\u001a\u0004\u0008\u001b\u0010\u000f\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/spos/base/internal/PosDeviceProxy;",
        "",
        "<init>",
        "()V",
        "",
        "d",
        "()Ljava/lang/String;",
        "Lteam/opay/spos/base/internal/PosDevices;",
        "b",
        "Lid8;",
        "c",
        "()Lteam/opay/spos/base/internal/PosDevices;",
        "device",
        "",
        "isSunmi",
        "()Z",
        "isHuazhirong",
        "e",
        "isMoreFun",
        "f",
        "g",
        "isMoreFun919",
        "h",
        "isMoreFun960",
        "i",
        "isMoreFun960B",
        "isMoreFun10Q",
        "j",
        "isNewLand",
        "k",
        "isWiseasy",
        "l",
        "isTopwise",
        "m",
        "isTopwiseMP35P",
        "n",
        "isD20",
        "o",
        "isNexgo",
        "p",
        "isKozen",
        "q",
        "isTianyu",
        "r",
        "isUrovo",
        "s",
        "isSmallScreenDevice",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/spos/base/internal/PosDeviceProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/internal/PosDeviceProxy;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/base/internal/PosDeviceProxy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->a:Lteam/opay/spos/base/internal/PosDeviceProxy;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->b:Lid8;

    .line 15
    .line 16
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isSunmi$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isSunmi$2;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->c:Lid8;

    .line 23
    .line 24
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isHuazhirong$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isHuazhirong$2;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->d:Lid8;

    .line 31
    .line 32
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun$2;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->e:Lid8;

    .line 39
    .line 40
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun919$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun919$2;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->f:Lid8;

    .line 47
    .line 48
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun960$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun960$2;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->g:Lid8;

    .line 55
    .line 56
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun960B$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun960B$2;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->h:Lid8;

    .line 63
    .line 64
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->i:Lid8;

    .line 71
    .line 72
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isNewLand$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isNewLand$2;

    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->j:Lid8;

    .line 79
    .line 80
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isWiseasy$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isWiseasy$2;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->k:Lid8;

    .line 87
    .line 88
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isTopwise$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isTopwise$2;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->l:Lid8;

    .line 95
    .line 96
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isTopwiseMP35P$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isTopwiseMP35P$2;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->m:Lid8;

    .line 103
    .line 104
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isD20$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isD20$2;

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->n:Lid8;

    .line 111
    .line 112
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isNexgo$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isNexgo$2;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->o:Lid8;

    .line 119
    .line 120
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isKozen$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isKozen$2;

    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->p:Lid8;

    .line 127
    .line 128
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isTianyu$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isTianyu$2;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->q:Lid8;

    .line 135
    .line 136
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isUrovo$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isUrovo$2;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->r:Lid8;

    .line 143
    .line 144
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isSmallScreenDevice$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isSmallScreenDevice$2;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->s:Lid8;

    .line 151
    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lteam/opay/spos/base/internal/PosDeviceProxy;)Lteam/opay/spos/base/internal/PosDevices;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/base/internal/PosDeviceProxy;->c()Lteam/opay/spos/base/internal/PosDevices;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/spos/base/internal/PosDeviceProxy;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/base/internal/PosDeviceProxy;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final c()Lteam/opay/spos/base/internal/PosDevices;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/base/internal/PosDevices;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosStorage;->Companion:Lteam/opay/spos/base/spi/IPosStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/spos/base/spi/IPosStorage$Companion;->a()Lteam/opay/spos/base/spi/IPosStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosStorage;->sn()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
