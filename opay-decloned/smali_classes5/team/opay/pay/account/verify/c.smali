.class public final Lteam/opay/pay/account/verify/c;
.super Ljava/lang/Object;
.source "Track.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JW\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082.\u0010\u000c\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\n\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJW\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082.\u0010\u000c\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\n\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJW\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082.\u0010\u000c\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\n\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0081\u0001\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082.\u0010\u000c\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\n\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J1\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJO\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00082.\u0010\u000c\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\n\"\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR.\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010-\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/account/verify/c;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "",
        "modifyType",
        "",
        "Lkotlin/Pair;",
        "values",
        "",
        "d",
        "(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V",
        "b",
        "e",
        "",
        "resultState",
        "errorCode",
        "error",
        "traceId",
        "f",
        "(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V",
        "status",
        "msg",
        "c",
        "(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V",
        "action",
        "a",
        "(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V",
        "",
        "Ljava/util/Map;",
        "h",
        "()Ljava/util/Map;",
        "j",
        "(Ljava/util/Map;)V",
        "extraMap",
        "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "i",
        "()Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "k",
        "(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V",
        "verifyPoolResponse",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/pay/account/verify/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lteam/opay/pay/account/verify/VerifyPoolResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/account/verify/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 14
    .line 15
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

.method public static synthetic g(Lteam/opay/pay/account/verify/c;Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V
    .locals 11

    .line 1
    and-int/lit8 v0, p9, 0x10

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v7, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v7, p5

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p9, 0x20

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v8, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v8, p6

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v0, p9, 0x40

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    move-object v9, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v9, p7

    .line 26
    .line 27
    :goto_2
    move-object v2, p0

    .line 28
    move-object v3, p1

    .line 29
    move v4, p2

    .line 30
    move-object v5, p3

    .line 31
    move-object v6, p4

    .line 32
    move-object/from16 v10, p8

    .line 33
    .line 34
    invoke-virtual/range {v2 .. v10}, Lteam/opay/pay/account/verify/c;->f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "action"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "values"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    array-length v0, p3

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    aget-object v2, p3, v1

    .line 26
    .line 27
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 48
    .line 49
    invoke-virtual {v0, p2, p1}, Lx7b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-direct {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lteam/opay/pay/account/verify/V3VerifyConfig;->Companion:Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;

    .line 59
    .line 60
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const-string v1, "3"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v1, ""

    .line 70
    .line 71
    :goto_1
    const-string v2, "verify_pool_version"

    .line 72
    .line 73
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    new-array p3, p3, [Lkotlin/Pair;

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, [Lkotlin/Pair;

    .line 94
    .line 95
    invoke-virtual {v0, p2, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final varargs b(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "values"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/account/verify/c$a;->a:[I

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    aget p2, v0, p2

    .line 23
    .line 24
    packed-switch p2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const-string p2, "verify_unfreeze_payment_return_click"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const-string p2, "verify_unfreeze_password_return_click"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const-string p2, "verify_whatsapp_return_click"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_3
    const-string p2, "verify_nin_return_click"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    const-string p2, "verify_bvn_return_click"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_5
    const-string p2, "verify_face_return_click"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string p2, "verify_sec_question_return_click"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const-string p2, "verify_pattern_return_click"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    const-string p2, "verify_name_return_click"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_9
    const-string p2, "verify_payment_pin_return_click"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_a
    const-string p2, "verify_password_return_click"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_b
    const-string p2, "verify_email_return_click"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_c
    const-string p2, "OTP_verify_return_click"

    .line 67
    .line 68
    :goto_0
    const/4 v0, 0x0

    .line 69
    new-array v1, v0, [Lkotlin/Pair;

    .line 70
    .line 71
    sget-object v2, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    array-length v2, p4

    .line 111
    :goto_2
    if-ge v0, v2, :cond_1

    .line 112
    .line 113
    aget-object v3, p4, v0

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    const-string p4, "entrance_id"

    .line 123
    .line 124
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-static {v1, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    sget-object p4, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 133
    .line 134
    if-eqz p4, :cond_2

    .line 135
    .line 136
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    goto :goto_3

    .line 141
    :cond_2
    const/4 p4, 0x0

    .line 142
    :goto_3
    const-string v0, "valChainId"

    .line 143
    .line 144
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object p4

    .line 148
    invoke-static {p3, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    array-length p4, p3

    .line 153
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    check-cast p3, [Lkotlin/Pair;

    .line 158
    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/c;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "entrance_id"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const-string v0, "status"

    .line 17
    .line 18
    invoke-static {v0, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    const-string p4, ""

    .line 25
    .line 26
    :cond_0
    const-string v0, "error_msg"

    .line 27
    .line 28
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lkotlin/Pair;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aput-object p2, v0, v1

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    aput-object p3, v0, p2

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    aput-object p4, v0, p2

    .line 43
    .line 44
    const-string p2, "otp_send_result"

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, v0}, Lteam/opay/pay/account/verify/c;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final varargs d(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "values"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/account/verify/c$a;->a:[I

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    aget p2, v0, p2

    .line 23
    .line 24
    packed-switch p2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const-string p2, "cashierdesk_window_show"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const-string p2, "verify_unfreeze_payment_show"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const-string p2, "verify_unfreeze_password_show"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_3
    const-string p2, "verify_whatsapp_show"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    const-string p2, "verify_nin_show"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_5
    const-string p2, "verify_bvn_show"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string p2, "verify_face_show"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const-string p2, "verify_sec_question_show"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    const-string p2, "verify_pattern_show"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_9
    const-string p2, "verify_name_show"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_a
    const-string p2, "verify_payment_pin_show"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_b
    const-string p2, "verify_password_show"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_c
    const-string p2, "verify_email_show"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_d
    const-string p2, "OTP_verify_show"

    .line 70
    .line 71
    :goto_0
    const/4 v0, 0x0

    .line 72
    new-array v1, v0, [Lkotlin/Pair;

    .line 73
    .line 74
    sget-object v2, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_0

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_1

    .line 113
    :cond_0
    array-length v2, p4

    .line 114
    :goto_2
    if-ge v0, v2, :cond_1

    .line 115
    .line 116
    aget-object v3, p4, v0

    .line 117
    .line 118
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_1
    const-string p4, "entrance_id"

    .line 126
    .line 127
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-static {v1, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    sget-object p4, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 136
    .line 137
    if-eqz p4, :cond_2

    .line 138
    .line 139
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    goto :goto_3

    .line 144
    :cond_2
    const/4 p4, 0x0

    .line 145
    :goto_3
    const-string v0, "valChainId"

    .line 146
    .line 147
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-static {p3, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    sget-object p4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 156
    .line 157
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p4

    .line 165
    const-string v0, "mobile"

    .line 166
    .line 167
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    invoke-static {p3, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    array-length p4, p3

    .line 176
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    check-cast p3, [Lkotlin/Pair;

    .line 181
    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/c;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs e(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "values"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/account/verify/c$a;->a:[I

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    aget p2, v0, p2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    packed-switch p2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const-string p2, ""

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    const-string p2, "verify_whatsapp_verify_click"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    const-string p2, "verify_nin_verify_click"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    const-string p2, "verify_bvn_verify_click"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    const-string p2, "verify_face_verify_click"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_4
    const-string p2, "verify_sec_question_verify_click"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_5
    move-object p2, v0

    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string p2, "verify_name_verify_click"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const-string p2, "verify_payment_pin_verify_click"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_8
    const-string p2, "verify_password_verify_click"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_9
    const-string p2, "verify_email_verify_click"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_a
    const-string p2, "OTP_verify_verify_click"

    .line 61
    .line 62
    :goto_0
    if-eqz p2, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    new-array v2, v1, [Lkotlin/Pair;

    .line 66
    .line 67
    sget-object v3, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v2, v4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    array-length v3, p4

    .line 107
    :goto_2
    if-ge v1, v3, :cond_1

    .line 108
    .line 109
    aget-object v4, p4, v1

    .line 110
    .line 111
    invoke-static {v2, v4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const-string p4, "entrance_id"

    .line 119
    .line 120
    invoke-static {p4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-static {v2, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    sget-object p4, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 129
    .line 130
    if-eqz p4, :cond_2

    .line 131
    .line 132
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_2
    const-string p4, "valChainId"

    .line 137
    .line 138
    invoke-static {p4, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-static {p3, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    sget-object p4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 147
    .line 148
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    const-string v0, "mobile"

    .line 157
    .line 158
    invoke-static {v0, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    invoke-static {p3, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    sget-object p4, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 167
    .line 168
    array-length v0, p3

    .line 169
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    check-cast p3, [Lkotlin/Pair;

    .line 174
    .line 175
    invoke-virtual {p4, p1, p2, p3}, Lteam/opay/pay/account/verify/c;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "traceId"

    .line 12
    .line 13
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "values"

    .line 17
    .line 18
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lteam/opay/pay/account/verify/c$a;->a:[I

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    aget p3, v0, p3

    .line 28
    .line 29
    packed-switch p3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    const-string p3, ""

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    const-string p3, "verifypool_MTNVerify"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const-string p3, "verify_popup_notify_return"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const-string p3, "verify_unfreeze_payment_return"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    const-string p3, "verify_unfreeze_password_return"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    const-string p3, "verify_whatsapp_verify_return"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    const-string p3, "verify_nin_verify_return"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_6
    const-string p3, "verify_bvn_verify_return"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_7
    const-string p3, "verify_face_verify_return"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_8
    const-string p3, "verify_sec_question_verify_return"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_9
    const-string p3, "verify_gesture_verify_return"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_a
    const-string p3, "verify_name_verify_return"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_b
    const-string p3, "verify_payment_pin_verify_return"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_c
    const-string p3, "verify_password_verify_return"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_d
    const-string p3, "verify_email_verify_return"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_e
    const-string p3, "verify_otp_verify_return"

    .line 78
    .line 79
    :goto_0
    const/4 v0, 0x0

    .line 80
    new-array v1, v0, [Lkotlin/Pair;

    .line 81
    .line 82
    sget-object v2, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    array-length v2, p8

    .line 122
    :goto_2
    if-ge v0, v2, :cond_1

    .line 123
    .line 124
    aget-object v3, p8, v0

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    const-string p8, "entrance_id"

    .line 134
    .line 135
    invoke-static {p8, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-static {v1, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    const-string p8, "status"

    .line 148
    .line 149
    invoke-static {p8, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p4, p2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string p4, "error_code"

    .line 158
    .line 159
    invoke-static {p4, p5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string p4, "error_msg"

    .line 168
    .line 169
    invoke-static {p4, p6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const-string p4, "trace_id"

    .line 178
    .line 179
    invoke-static {p4, p7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object p4

    .line 183
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    sget-object p4, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 188
    .line 189
    if-eqz p4, :cond_2

    .line 190
    .line 191
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    goto :goto_3

    .line 196
    :cond_2
    const/4 p4, 0x0

    .line 197
    :goto_3
    const-string p5, "valChainId"

    .line 198
    .line 199
    invoke-static {p5, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    sget-object p4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 208
    .line 209
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 210
    .line 211
    .line 212
    move-result-object p4

    .line 213
    invoke-virtual {p4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    const-string p5, "mobile"

    .line 218
    .line 219
    invoke-static {p5, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    invoke-static {p2, p4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    sget-object p4, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 228
    .line 229
    array-length p5, p2

    .line 230
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, [Lkotlin/Pair;

    .line 235
    .line 236
    invoke-virtual {p4, p1, p3, p2}, Lteam/opay/pay/account/verify/c;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lteam/opay/pay/account/verify/VerifyPoolResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lteam/opay/pay/account/verify/c;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final k(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V
    .locals 0
    .param p1    # Lteam/opay/pay/account/verify/VerifyPoolResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lteam/opay/pay/account/verify/c;->c:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 2
    .line 3
    return-void
.end method
