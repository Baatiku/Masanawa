.class public final Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0006\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "R",
        "invoke",
        "()Ljava/lang/Object;",
        "androidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2",
        "team/opay/core/common/android/view/LifecycleKt$withState$2$invokeSuspend$$inlined$withStateAtLeast$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $intent$inlined:Landroid/content/Intent;

.field final synthetic this$0:Lteam/opay/business/picture/helper/ProxyFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/helper/ProxyFragment;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;->this$0:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;->$intent$inlined:Landroid/content/Intent;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;->this$0:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/picture/helper/ProxyFragment;->G(Lteam/opay/business/picture/helper/ProxyFragment;)Landroidx/activity/result/ActivityResultLauncher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;->$intent$inlined:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lteam/opay/business/picture/helper/ProxyFragment$launch$$inlined$withState$1$1;->this$0:Lteam/opay/business/picture/helper/ProxyFragment;

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Activity Not found: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object v0
.end method
