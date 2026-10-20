.class public final Lteam/opay/business/picture/helper/SelectFileHelper;
.super Ljava/lang/Object;
.source "SelectFileHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R$\u0010)\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/business/picture/helper/SelectFileHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "fileType",
        "sizeKb",
        "<init>",
        "(Landroid/content/Context;II)V",
        "",
        "l",
        "()V",
        "Landroid/net/Uri;",
        "uri",
        "h",
        "(Landroid/net/Uri;)V",
        "",
        "mimeType",
        "j",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "a",
        "Landroid/content/Context;",
        "e",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "b",
        "I",
        "c",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "d",
        "Lid8;",
        "f",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "g",
        "()Lteam/opay/business/picture/helper/PickViewWrapper;",
        "n",
        "(Lteam/opay/business/picture/helper/PickViewWrapper;)V",
        "uriCallBack",
        "business-picture_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lteam/opay/business/picture/helper/PickViewWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->b:I

    .line 4
    iput p3, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->c:I

    .line 5
    new-instance p1, Lked;

    invoke-direct {p1}, Lked;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->d:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x64

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/picture/helper/SelectFileHelper;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/business/picture/helper/SelectFileHelper;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper;->m(Lteam/opay/business/picture/helper/SelectFileHelper;ILandroid/content/Intent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/helper/SelectFileHelper;->i(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/picture/helper/SelectFileHelper;->k()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/business/picture/helper/SelectFileHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final i(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/PickViewWrapper;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final k()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final m(Lteam/opay/business/picture/helper/SelectFileHelper;ILandroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/business/picture/helper/SelectFileHelper;->h(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final e()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lteam/opay/business/picture/helper/PickViewWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, -0x58a7d764    # -2.9998036E-15f

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const v2, -0x34686c8b    # -1.986737E7f

    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const v2, 0x71f5c476

    .line 28
    .line 29
    .line 30
    if-eq v1, v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "image/*"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "image/png"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "image/jpeg"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->j(Landroid/net/Uri;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    :goto_0
    new-instance v1, Lmed;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1, v0}, Lmed;-><init>(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    invoke-static {v2, v3, v1, p1, v0}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public final j(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/SelectFileHelper;->f()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p1, p2, v1}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;-><init>(Lteam/opay/business/picture/helper/SelectFileHelper;Landroid/net/Uri;Ljava/lang/String;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lteam/opay/business/picture/helper/FileTypeUtils;->a:Lteam/opay/business/picture/helper/FileTypeUtils;

    .line 11
    .line 12
    iget v2, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->b:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lteam/opay/business/picture/helper/FileTypeUtils;->b(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v3, 0x21

    .line 23
    .line 24
    if-lt v2, v3, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v3, "android.provider.action.PICK_IMAGES"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v3, "android.intent.action.GET_CONTENT"

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget v3, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->b:I

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lteam/opay/business/picture/helper/FileTypeUtils;->b(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const-string v1, "image/*"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v3, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->b:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lteam/opay/business/picture/helper/FileTypeUtils;->c(I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const-string v1, "application/pdf"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const-string v1, "*/*"

    .line 64
    .line 65
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lteam/opay/business/picture/helper/ResultProxy;

    .line 69
    .line 70
    invoke-direct {v1}, Lteam/opay/business/picture/helper/ResultProxy;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lteam/opay/business/picture/helper/ResultProxy;->f(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lled;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lled;-><init>(Lteam/opay/business/picture/helper/SelectFileHelper;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lteam/opay/business/picture/helper/ResultProxy;->e(Lkotlin/jvm/functions/Function2;)Lteam/opay/business/picture/helper/ResultProxy;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lteam/opay/business/picture/helper/ResultProxy;->d(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final n(Lteam/opay/business/picture/helper/PickViewWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/business/picture/helper/PickViewWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/SelectFileHelper;->e:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    return-void
.end method
