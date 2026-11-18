.class final Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SelectFileHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/helper/SelectFileHelper;->j(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.picture.helper.SelectFileHelper$handlePicture$1"
    f = "SelectFileHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lteam/opay/business/picture/helper/SelectFileHelper;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/picture/helper/SelectFileHelper;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$mimeType:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->invokeSuspend$lambda$1$lambda$0(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/SelectFileHelper;->g()Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "fromFile(...)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/PickViewWrapper;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$mimeType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;-><init>(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object p1, Lmd1;->a:Lmd1;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->e()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->e()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Let;->p(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v4, v0

    .line 32
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->e()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v5, v0

    .line 43
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 44
    .line 45
    invoke-static {v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->d(Lteam/opay/business/picture/helper/SelectFileHelper;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    move-object v1, p1

    .line 50
    invoke-virtual/range {v1 .. v6}, Lmd1;->d(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 57
    .line 58
    iget-object v2, p0, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->$mimeType:Ljava/lang/String;

    .line 59
    .line 60
    sget-object v3, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/business/picture/helper/SelectFileHelper;->e()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "compress_select"

    .line 67
    .line 68
    invoke-virtual {v3, v4, v5}, Lteam/opay/business/picture/internal/CameraXManager;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "getAbsolutePath(...)"

    .line 77
    .line 78
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v4}, Lmd1;->g(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    new-instance p1, Lteam/opay/business/picture/helper/b;

    .line 85
    .line 86
    invoke-direct {p1, v1, v3, v2}, Lteam/opay/business/picture/helper/b;-><init>(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    const/4 v1, 0x0

    .line 91
    const-wide/16 v2, 0x0

    .line 92
    .line 93
    invoke-static {v2, v3, p1, v0, v1}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
