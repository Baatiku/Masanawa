.class final Lcashier/adapter/CashierInfoAdapter$updateFee$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CashierInfoAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/adapter/CashierInfoAdapter;->u(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/data/MulDataEntity<",
        "Lcashier/data/PaymentInfo;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/data/MulDataEntity;",
        "Lcashier/data/PaymentInfo;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Lcashier/data/MulDataEntity;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcashier/adapter/CashierInfoAdapter$updateFee$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcashier/adapter/CashierInfoAdapter$updateFee$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/adapter/CashierInfoAdapter$updateFee$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcashier/adapter/CashierInfoAdapter$updateFee$1;->INSTANCE:Lcashier/adapter/CashierInfoAdapter$updateFee$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Lcashier/data/MulDataEntity;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/MulDataEntity<",
            "Lcashier/data/PaymentInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcashier/data/PaymentInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcashier/data/PaymentInfo;->c()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcashier/data/MulDataEntity;

    invoke-virtual {p0, p1}, Lcashier/adapter/CashierInfoAdapter$updateFee$1;->invoke(Lcashier/data/MulDataEntity;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
