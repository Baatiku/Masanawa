.class public final Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;
.super Ljava/lang/Object;
.source "ContactsHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;",
        "",
        "Landroid/view/View;",
        "button",
        "Lteam/opay/pay/phone/ContactsHandler;",
        "contactsHandler",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/view/View;Lteam/opay/pay/phone/ContactsHandler;Landroid/app/Activity;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "(Landroid/view/View;Lteam/opay/pay/phone/ContactsHandler;Landroidx/fragment/app/Fragment;)V",
        "",
        "d",
        "()V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "intent",
        "c",
        "(IILandroid/content/Intent;)V",
        "f",
        "a",
        "Landroid/view/View;",
        "b",
        "Lteam/opay/pay/phone/ContactsHandler;",
        "Landroid/app/Activity;",
        "Landroidx/fragment/app/Fragment;",
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


# instance fields
.field public a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/phone/ContactsHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lteam/opay/pay/phone/ContactsHandler;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/phone/ContactsHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->b:Lteam/opay/pay/phone/ContactsHandler;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->c:Landroid/app/Activity;

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lteam/opay/pay/phone/ContactsHandler;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/phone/ContactsHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->a:Landroid/view/View;

    .line 8
    iput-object p2, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->b:Lteam/opay/pay/phone/ContactsHandler;

    .line 9
    iput-object p3, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->d:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->d()V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->e(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->g(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->b:Lteam/opay/pay/phone/ContactsHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/phone/ContactsHandler;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.intent.action.PICK"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->a:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->c:Landroid/app/Activity;

    .line 42
    .line 43
    const/16 v2, 0x539

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->d:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->f()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final g(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->c:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "android.permission.READ_CONTACTS"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1, p0, v0}, Landroidx/core/app/a;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->d:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public final c(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x539

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p3, :cond_4

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object p2, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->b:Lteam/opay/pay/phone/ContactsHandler;

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lteam/opay/pay/phone/ContactsHandler;->j(Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void

    .line 30
    :cond_4
    :goto_1
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    return-void

    .line 43
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "Intent should always be set when result is OK"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_6
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;->a:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Lrp2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lrp2;-><init>(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f()V
    .locals 20

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v1, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->l:Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;

    .line 16
    .line 17
    new-instance v15, Lteam/opay/pay/base/DialogInfo;

    .line 18
    .line 19
    sget v2, Lteam/opay/pay/R$string;->onboarding_permission_contacts_header:I

    .line 20
    .line 21
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget v2, Lteam/opay/pay/R$string;->onboarding_permission_contacts_description:I

    .line 26
    .line 27
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget v2, Lteam/opay/pay/R$string;->dialog_positive_button_text:I

    .line 32
    .line 33
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sget v2, Lteam/opay/pay/R$string;->dialog_negative_button_text:I

    .line 38
    .line 39
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v16, 0x1ff0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    move-object v2, v15

    .line 58
    move-object/from16 v19, v15

    .line 59
    .line 60
    move-object/from16 v15, v18

    .line 61
    .line 62
    invoke-direct/range {v2 .. v17}, Lteam/opay/pay/base/DialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIILandroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v2, v19

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/base/DialogInfo;)Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lsp2;

    .line 72
    .line 73
    move-object/from16 v3, p0

    .line 74
    .line 75
    invoke-direct {v2, v3}, Lsp2;-><init>(Lteam/opay/pay/payment/airtimeDataBase/ContactsHelper;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->S(Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method
