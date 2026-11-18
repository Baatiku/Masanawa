.class public final Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic $callback$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $perms$inlined:[Ljava/lang/String;

.field final synthetic $request$inlined:Lteam/opay/opb/permission/PermRequest;

.field final synthetic this$0:Lteam/opay/opb/permission/PermissionFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$perms$inlined:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/opb/permission/PermissionFragment;->K(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lteam/opay/opb/permission/PermissionFragment;->I(Lteam/opay/opb/permission/PermissionFragment;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$perms$inlined:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lteam/opay/opb/permission/PermissionFragment;->J(Lteam/opay/opb/permission/PermissionFragment;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->$perms$inlined:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v2, v1

    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lhob;->b(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 47
    .line 48
    sget-object v1, Lteam/opay/opb/permission/PermStatus;->GRANTED:Lteam/opay/opb/permission/PermStatus;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lteam/opay/opb/permission/PermissionFragment;->F(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermStatus;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v2, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 55
    .line 56
    invoke-static {v2}, Lteam/opay/opb/permission/PermissionFragment;->G(Lteam/opay/opb/permission/PermissionFragment;)Landroidx/activity/result/ActivityResultLauncher;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 61
    .line 62
    invoke-static {v0}, Lteam/opay/opb/permission/PermissionFragment;->H(Lteam/opay/opb/permission/PermissionFragment;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lvd;->i(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object v0
.end method
