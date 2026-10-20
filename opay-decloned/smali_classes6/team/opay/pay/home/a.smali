.class public final synthetic Lteam/opay/pay/home/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/ClipboardAutoReader;

.field public final synthetic b:Lye9;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/home/a;->a:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/home/a;->b:Lye9;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/a;->a:Lteam/opay/pay/home/ClipboardAutoReader;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/a;->b:Lye9;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/pay/home/ClipboardAutoReader$readClipboard$2;->c(Lteam/opay/pay/home/ClipboardAutoReader;Lye9;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
