.class public final Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;
.super Ljava/lang/Object;
.source "TransactionBeneficiarySearchManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0018\u0000 K2\u00020\u0001:\u0001LB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J5\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J+\u0010\u001d\u001a\u00020\r2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0012\u0010\u001c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\u001a\"\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010\'\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0011\u0010*\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0004\u0008*\u0010+J!\u0010,\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00106\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00109\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R$\u0010B\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010CR\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010H\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010CR\u0016\u0010J\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u00103\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;",
        "",
        "<init>",
        "()V",
        "Landroid/widget/EditText;",
        "view",
        "",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "allList",
        "",
        "isFromAA",
        "Lteam/opay/pay/home/tabs/ac/a;",
        "listener",
        "",
        "g",
        "(Landroid/widget/EditText;Ljava/util/List;ZLteam/opay/pay/home/tabs/ac/a;)V",
        "fromClipboard",
        "s",
        "(Z)V",
        "list",
        "",
        "searchKey",
        "w",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "Landroid/view/View;",
        "ignoreView",
        "l",
        "(Landroid/view/MotionEvent;[Landroid/view/View;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "n",
        "()Landroidx/fragment/app/FragmentActivity;",
        "",
        "q",
        "(Landroid/widget/EditText;)I",
        "u",
        "()Z",
        "m",
        "(Ljava/lang/String;)Lkotlin/Unit;",
        "Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;",
        "o",
        "()Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;",
        "r",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "b",
        "Z",
        "c",
        "Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;",
        "searchWindow",
        "d",
        "I",
        "maxWindowHeight",
        "e",
        "Lteam/opay/pay/home/tabs/ac/a;",
        "f",
        "Landroid/view/View;",
        "getTargetView",
        "()Landroid/view/View;",
        "v",
        "(Landroid/view/View;)V",
        "targetView",
        "Landroid/widget/EditText;",
        "editText",
        "h",
        "Ljava/util/List;",
        "i",
        "searchEdit",
        "j",
        "isPaste",
        "k",
        "Companion",
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
.field public static final k:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:Lteam/opay/pay/home/tabs/ac/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->k:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->h:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->k(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Lteam/opay/pay/transfer/contact/bean/TransferContactData;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->p(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Lteam/opay/pay/transfer/contact/bean/TransferContactData;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->h(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(ZLteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroidx/fragment/app/FragmentActivity;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->i(ZLteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroidx/fragment/app/FragmentActivity;Landroid/widget/EditText;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final h(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;ZI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->e:Lteam/opay/pay/home/tabs/ac/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p3}, Lteam/opay/pay/home/tabs/ac/a;->a(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lese;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move v2, p3

    .line 12
    move-object v3, p0

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p1

    .line 15
    move v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Lese;-><init>(ZLteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroidx/fragment/app/FragmentActivity;Landroid/widget/EditText;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final i(ZLteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroidx/fragment/app/FragmentActivity;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    if-ne p0, p2, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    new-array p0, p0, [I

    .line 31
    .line 32
    invoke-virtual {p3, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Ljmf;->q(Landroid/content/Context;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    sub-int/2addr p0, p4

    .line 45
    invoke-virtual {p1, p3}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->q(Landroid/widget/EditText;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    sub-int/2addr p0, p2

    .line 50
    const/16 p2, 0x10

    .line 51
    .line 52
    invoke-static {p2}, Ljmf;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-int/2addr p0, p2

    .line 57
    iput p0, p1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->d:I

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    const/4 p2, 0x0

    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-static {p1, p3, p0, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->t(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public static final j(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;I)Z
    .locals 5

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-object v2, v3, v0

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    move-object p2, p0

    .line 44
    check-cast p2, Lteam/opay/pay/android/views/KeyboardEditText;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 53
    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->dismiss()V

    .line 57
    .line 58
    .line 59
    :cond_0
    return v4
.end method

.method public static final k(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result p4

    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    const/16 p4, 0x42

    .line 9
    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    const/4 v0, 0x5

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Ljava/lang/Integer;

    .line 21
    .line 22
    aput-object p4, v1, p2

    .line 23
    .line 24
    const/4 p4, 0x1

    .line 25
    aput-object v0, v1, p4

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->dismiss()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return p2
.end method

.method public static final p(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Lteam/opay/pay/transfer/contact/bean/TransferContactData;I)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->e:Lteam/opay/pay/home/tabs/ac/a;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v1, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;

    .line 22
    .line 23
    iget-boolean p0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 24
    .line 25
    invoke-direct {v1, p1, p0, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;-><init>(Lteam/opay/pay/transfer/contact/bean/TransferContactData;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lteam/opay/pay/home/tabs/ac/a;->b(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->s(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Landroid/widget/EditText;Ljava/util/List;ZLteam/opay/pay/home/tabs/ac/a;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/home/tabs/ac/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;Z",
            "Lteam/opay/pay/home/tabs/ac/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "allList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->h:Ljava/util/List;

    .line 23
    .line 24
    iput-object p4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->e:Lteam/opay/pay/home/tabs/ac/a;

    .line 25
    .line 26
    iput-boolean p3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->i:Landroid/widget/EditText;

    .line 29
    .line 30
    iget-object p2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->f:Landroid/view/View;

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->f:Landroid/view/View;

    .line 35
    .line 36
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->n()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez p2, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-static {p2}, Lvp7;->b(Landroid/app/Activity;)Lvp7;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    new-instance p4, Lbse;

    .line 50
    .line 51
    invoke-direct {p4, p0, p1, p2}, Lbse;-><init>(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;Landroid/widget/EditText;Landroidx/fragment/app/FragmentActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p4}, Lvp7;->g(Lvp7$a;)V

    .line 55
    .line 56
    .line 57
    instance-of p3, p1, Lteam/opay/pay/android/views/KeyboardEditText;

    .line 58
    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    move-object p3, p1

    .line 64
    check-cast p3, Lteam/opay/pay/android/views/KeyboardEditText;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 p3, 0x0

    .line 68
    :goto_0
    if-eqz p3, :cond_5

    .line 69
    .line 70
    new-instance p4, Lcse;

    .line 71
    .line 72
    invoke-direct {p4, p1, p0}, Lcse;-><init>(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p4}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance p3, Ldse;

    .line 80
    .line 81
    invoke-direct {p3, p1, p0}, Ldse;-><init>(Landroid/widget/EditText;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    new-instance p3, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$a;

    .line 88
    .line 89
    invoke-direct {p3, p2, p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$a;-><init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$bindSearchView$$inlined$doOnTextChanged$1;

    .line 96
    .line 97
    invoke-direct {p2, p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager$bindSearchView$$inlined$doOnTextChanged$1;-><init>(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_2
    return-void
.end method

.method public final varargs l(Landroid/view/MotionEvent;[Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ignoreView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    array-length v2, p2

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_1

    .line 26
    .line 27
    aget-object v0, p2, v3

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez v0, :cond_5

    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Lli2;->f(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 p2, 0x1

    .line 64
    if-ne p1, p2, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    :cond_4
    if-eqz v1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void
.end method

.method public final m(Ljava/lang/String;)Lkotlin/Unit;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->h:Ljava/util/List;

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    move-object v6, v4

    .line 28
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 29
    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lez v7, :cond_0

    .line 35
    .line 36
    iget-boolean v7, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 37
    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    invoke-static {v7, v1, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ne v7, v5, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v6, v1, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-static {v7, v1, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-ne v7, v5, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    invoke-static {v6, v1, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-ne v6, v5, :cond_0

    .line 88
    .line 89
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v4, 0xa

    .line 96
    .line 97
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    move-object v6, v4

    .line 119
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 120
    .line 121
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 122
    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    const/16 v41, 0x1

    .line 126
    .line 127
    const/16 v42, 0x0

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, 0x0

    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v13, 0x0

    .line 136
    const/4 v14, 0x0

    .line 137
    const/4 v15, 0x0

    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    const/16 v20, 0x0

    .line 147
    .line 148
    const/16 v21, 0x0

    .line 149
    .line 150
    const/16 v22, 0x0

    .line 151
    .line 152
    const/16 v23, 0x0

    .line 153
    .line 154
    const/16 v24, 0x0

    .line 155
    .line 156
    const/16 v25, 0x0

    .line 157
    .line 158
    const/16 v26, 0x0

    .line 159
    .line 160
    const/16 v27, 0x0

    .line 161
    .line 162
    const/16 v28, 0x0

    .line 163
    .line 164
    const/16 v29, 0x0

    .line 165
    .line 166
    const/16 v30, 0x0

    .line 167
    .line 168
    const/16 v31, 0x0

    .line 169
    .line 170
    const/16 v32, 0x0

    .line 171
    .line 172
    const/16 v33, 0x0

    .line 173
    .line 174
    const/16 v34, 0x0

    .line 175
    .line 176
    const/16 v35, 0x0

    .line 177
    .line 178
    const/16 v36, 0x0

    .line 179
    .line 180
    const/16 v37, 0x0

    .line 181
    .line 182
    const/16 v38, 0x0

    .line 183
    .line 184
    const/16 v39, 0x0

    .line 185
    .line 186
    const/16 v40, -0x1

    .line 187
    .line 188
    invoke-static/range {v6 .. v42}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->copy$default(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/TransferOpayContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/core/api/graphql/StampDutyInfo;IILjava/lang/Object;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    const/16 v4, 0x9

    .line 193
    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v6, v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setType(Ljava/lang/Integer;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-ne v3, v5, :cond_7

    .line 220
    .line 221
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 222
    .line 223
    if-eqz v3, :cond_a

    .line 224
    .line 225
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->dismiss()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-nez v3, :cond_8

    .line 234
    .line 235
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 236
    .line 237
    if-eqz v3, :cond_8

    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-ne v3, v5, :cond_8

    .line 244
    .line 245
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 246
    .line 247
    if-eqz v3, :cond_a

    .line 248
    .line 249
    invoke-virtual {v3, v2, v1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->i(Ljava/util/List;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-nez v3, :cond_9

    .line 258
    .line 259
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->w(Ljava/util/List;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 264
    .line 265
    .line 266
    :cond_a
    :goto_3
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->e:Lteam/opay/pay/home/tabs/ac/a;

    .line 267
    .line 268
    if-eqz v3, :cond_b

    .line 269
    .line 270
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 271
    .line 272
    invoke-interface {v3, v2, v1, v4}, Lteam/opay/pay/home/tabs/ac/a;->c(Ljava/util/List;Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_b
    const/4 v1, 0x0

    .line 279
    :goto_4
    return-object v1
.end method

.method public final n()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/content/ContextWrapper;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0
.end method

.method public final o()Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 12
    .line 13
    iget-boolean v1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->d:I

    .line 21
    .line 22
    new-instance v4, Lfse;

    .line 23
    .line 24
    invoke-direct {v4, p0}, Lfse;-><init>(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;-><init>(ZLandroid/content/Context;ILkotlin/jvm/functions/Function2;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final q(Landroid/widget/EditText;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Landroid/view/View;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "null cannot be cast to non-null type android.view.View"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return v0
.end method

.method public final r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget v1, v0, p1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget v0, v0, v2

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    :goto_0
    add-int/2addr v3, v0

    .line 26
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->g:Landroid/widget/EditText;

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 36
    :goto_1
    add-int/2addr v4, v1

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-float v1, v1

    .line 42
    cmpl-float v1, v5, v1

    .line 43
    .line 44
    if-lez v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-float v4, v4

    .line 51
    cmpg-float v1, v1, v4

    .line 52
    .line 53
    if-gez v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-float v0, v0

    .line 60
    cmpl-float v0, v1, v0

    .line 61
    .line 62
    if-lez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    int-to-float v0, v3

    .line 69
    cmpg-float p2, p2, v0

    .line 70
    .line 71
    if-gez p2, :cond_3

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    :cond_3
    return p1
.end method

.method public final s(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 5
    .line 6
    :cond_0
    if-nez p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->i:Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->i:Landroid/widget/EditText;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move-object p1, v1

    .line 37
    :goto_1
    if-nez p1, :cond_4

    .line 38
    .line 39
    const-string p1, ""

    .line 40
    .line 41
    :cond_4
    iget-boolean v2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 42
    .line 43
    if-nez v2, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->u()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    iget-boolean v2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    sget-object v2, Lteam/opay/pay/transfer/TransferSearchSwitcher;->Companion:Lteam/opay/pay/transfer/TransferSearchSwitcher$Companion;

    .line 56
    .line 57
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferSearchSwitcher$Companion;->a()Lteam/opay/pay/transfer/TransferSearchSwitcher;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferSearchSwitcher;->getAaSearchEnable()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ne v2, v0, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    iget-boolean v2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 71
    .line 72
    if-nez v2, :cond_6

    .line 73
    .line 74
    sget-object v2, Lteam/opay/pay/transfer/TransferSearchSwitcher;->Companion:Lteam/opay/pay/transfer/TransferSearchSwitcher$Companion;

    .line 75
    .line 76
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferSearchSwitcher$Companion;->a()Lteam/opay/pay/transfer/TransferSearchSwitcher;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferSearchSwitcher;->getAcSearchEnable()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ne v2, v0, :cond_6

    .line 87
    .line 88
    :goto_2
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->m(Ljava/lang/String;)Lkotlin/Unit;

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->e:Lteam/opay/pay/home/tabs/ac/a;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-boolean v2, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->j:Z

    .line 97
    .line 98
    invoke-interface {v0, v1, p1, v2}, Lteam/opay/pay/home/tabs/ac/a;->c(Ljava/util/List;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 102
    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->dismiss()V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_3
    return-void
.end method

.method public final u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->i:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_1
    invoke-static {v0}, Lda2;->b(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_6

    .line 28
    .line 29
    sget-object v2, Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher;->Companion:Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher$Companion;

    .line 30
    .line 31
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher$Companion;->a()Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-boolean v4, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->b:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher;->getAaSearchStartIndex()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/TransferSearchConfigSwitcher;->getAcSearchStartIndex()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/4 v1, 0x0

    .line 70
    :goto_3
    if-lt v0, v1, :cond_5

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    const/4 v3, 0x0

    .line 74
    :cond_6
    :goto_4
    return v3
.end method

.method public final v(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->f:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "searchKey"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->o()Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->f:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->showAsDropDown(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchManager;->c:Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchFragment;->i(Ljava/util/List;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
