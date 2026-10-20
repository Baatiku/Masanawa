.class public final Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic $contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic $input$inlined:Ljava/lang/Object;

.field final synthetic this$0:Lteam/opay/opb/result/HostFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$input$inlined:Ljava/lang/Object;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/opb/result/HostFragment;->E(Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 10
    .line 11
    invoke-static {v1}, Lteam/opay/opb/result/HostFragment;->D(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 22
    .line 23
    invoke-static {v1}, Lteam/opay/opb/result/HostFragment;->D(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 28
    .line 29
    iget-object v3, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-static {v2, v3}, Lteam/opay/opb/result/HostFragment;->F(Lteam/opay/opb/result/HostFragment;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 39
    .line 40
    invoke-static {v1}, Lteam/opay/opb/result/HostFragment;->C(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 53
    .line 54
    iget-object v3, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$input$inlined:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance v4, Lteam/opay/opb/result/HostFragment$a;

    .line 57
    .line 58
    invoke-direct {v4, v2, v0}, Lteam/opay/opb/result/HostFragment$a;-><init>(Lteam/opay/opb/result/HostFragment;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v1, v3, v4}, Lvd;->f(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "Contract not registered: "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "Contract already launched: "

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1
.end method
