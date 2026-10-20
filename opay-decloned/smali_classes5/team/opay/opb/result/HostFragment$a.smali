.class public final Lteam/opay/opb/result/HostFragment$a;
.super Ljava/lang/Object;
.source "HostFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/result/HostFragment;->J(Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/opb/result/HostFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/opb/result/HostFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/result/HostFragment$a;->a:Lteam/opay/opb/result/HostFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/result/HostFragment$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$a;->a:Lteam/opay/opb/result/HostFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/result/HostFragment;->D(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/result/HostFragment$a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
